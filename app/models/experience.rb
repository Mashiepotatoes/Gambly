class Experience < ApplicationRecord
  has_many :reviews
  has_many :userexperiences
  has_many :users, through: :userexperiences
  validates :name, presence: true, length: { minimum: 5 }
  validates :details, presence: true
  validates :price, numericality: { greater_than: 0, less_than: 1000, allow_blank: true }
end
