class Review < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :content, presence: true, length: { minimum: 5, maximum: 300 }
  validates :rating, presence: true
  belongs_to :experience
  belongs_to :user
end
