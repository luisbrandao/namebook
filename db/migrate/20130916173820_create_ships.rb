class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :nome
      t.text :descr
      t.integer :base_type_id
      t.integer :ship_size_id

      t.timestamps
    end
  end
end
