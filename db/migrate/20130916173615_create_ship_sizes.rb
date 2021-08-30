class CreateShipSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :ship_sizes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
