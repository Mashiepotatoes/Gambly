class Rating < ApplicationRecord
  validates :rating, presence: true, numericality: { only_float: true }
  belongs_to :experience
end
