class AddDescrToShipSizes < ActiveRecord::Migration[6.1]
  def change
    add_column :ship_sizes, :descr, :text, default: ""
  end
end
