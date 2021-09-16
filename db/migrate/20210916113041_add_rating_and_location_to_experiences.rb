class AddRatingAndLocationToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :rating, :float
    add_column :experiences, :location, :string
  end
end
