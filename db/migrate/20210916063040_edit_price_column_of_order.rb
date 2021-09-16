class EditPriceColumnOfOrder < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :amount, :decimal
    add_column :orders, :amount, :decimal, precision: 15, scale: 2
  end
end
