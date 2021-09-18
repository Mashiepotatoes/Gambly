class AddDetailsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :details, :json
  end
end
