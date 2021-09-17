class AddReferenceToReview < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :experience, null: false, foreign_key: true
  end
end
