class EditAmountToOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :amount
    add_monetize :orders, :amount
  end
end
