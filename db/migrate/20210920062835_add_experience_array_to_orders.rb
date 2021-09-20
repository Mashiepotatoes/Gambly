class AddExperienceArrayToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :experiences, :string
  end
end
