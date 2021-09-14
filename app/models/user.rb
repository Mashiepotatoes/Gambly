class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :favorites, dependent: :destroy
  # has_many :user_experiences
  # has_many :questions
  # has_many :experiences, through: user_experiences
  validates :username, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9]{6,20}\z/ }
  validates :password, presence: true, length: { minimum: 8 }
  validates :email, presence: true, format: { with: /[a-zA-z0-9._]{3,}@\w{3,}\.\w{2,}/ }
end
