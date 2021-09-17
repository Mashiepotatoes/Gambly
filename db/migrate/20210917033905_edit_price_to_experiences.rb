class EditPriceToExperiences < ActiveRecord::Migration[6.0]
  def change
    remove_column :experiences, :price
    add_monetize :experiences, :price, currency: { present: false }
  end
end
