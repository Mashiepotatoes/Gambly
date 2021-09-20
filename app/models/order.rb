class Order < ApplicationRecord
  belongs_to :user
  serialize :experiences, Array

  monetize :amount_cents
end
