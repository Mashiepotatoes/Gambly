class Review < ApplicationRecord
  validates :content, presence: true, length: { minimum: 5, maximum: 300 }
  belongs_to :experience
end
