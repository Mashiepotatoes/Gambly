class AddReferenceToRating < ActiveRecord::Migration[6.0]
  def change
    add_reference :ratings, :experience, null: false, foreign_key: true
  end
end
