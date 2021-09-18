class DropTableRatings < ActiveRecord::Migration[6.0]
  def change
    drop_table :ratings
  end
end
