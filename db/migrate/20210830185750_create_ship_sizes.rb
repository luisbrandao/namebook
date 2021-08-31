class CreateShipSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :ship_sizes do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end
