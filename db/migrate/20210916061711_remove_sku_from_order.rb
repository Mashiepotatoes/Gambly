class RemoveSkuFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :experience_sku, :string
  end
end
