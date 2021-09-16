class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # favorited experiences
  has_many :favorites, dependent: :destroy
  has_many :favorite_experiences, through: :favorites, source: :experience

  has_many :questions

  # booking experiences
  has_many :user_experiences
  has_many :experiences, through: :user_experiences

  def has_favorited?(given_exp)
    favorite_experiences.find do |exp|
      given_exp == exp
    end
  end
end
