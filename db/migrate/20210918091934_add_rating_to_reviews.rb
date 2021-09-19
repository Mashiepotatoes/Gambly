class AddRatingToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :rating, :decimal, precision: 10, scale: 1
  end
end
