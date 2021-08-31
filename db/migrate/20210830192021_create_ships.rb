class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.string :nome, null: false
      t.text :descr
      t.references :base_type, null: false, foreign_key: true
      t.references :ship_size, null: false, foreign_key: true

      t.timestamps
    end
  end
end
