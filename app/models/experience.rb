class Experience < ApplicationRecord
  has_many :reviews
  has_many :user_experiences
  has_many :users, through: :user_experiences
  validates :name, presence: true, length: { minimum: 1 }
  validates :details, presence: true
  validates :price_cents, presence: true, numericality: { greater_than: 0, less_than: 1000, allow_blank: true }

  monetize :price_cents

  include PgSearch::Model
  pg_search_scope :search_by_name_and_details,
    against: [ :name, :details ],
    using: {
      tsearch: { prefix: true }
    }
end
