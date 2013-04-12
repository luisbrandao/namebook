class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.integer :id
      t.string :nome
      t.text :descr
      t.integer :book_id
      t.integer :base_id
      t.integer :size_id

      t.timestamps
    end
  end
end
