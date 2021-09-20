class RemoveExperiencesFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :experience, null: false, foreign_key: true
  end
end
