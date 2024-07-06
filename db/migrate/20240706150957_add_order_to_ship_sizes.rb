class AddOrderToShipSizes < ActiveRecord::Migration[6.1]
  def change
    add_column :ship_sizes, :ordem, :integer, default: 1
  end
end
