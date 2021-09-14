class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :details
      t.decimal :price, precision: 15, scale: 2
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
