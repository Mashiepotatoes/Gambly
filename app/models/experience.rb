class Experience < ApplicationRecord
  has_many :reviews
  # has_many :user_experiences
  # has_many :users, through: user_experiences
  validates :name, presence: true, length: { minimum: 5 }
  validates :details, presence: true
  validates :price, numericality: { greater_than: 0, less_than: 1000, allow_blank: true }
end
