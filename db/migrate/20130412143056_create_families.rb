class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.integer :id
      t.string :nome
      t.text :descr
      t.integer :race_id
      t.integer :book_id

      t.timestamps
    end
  end
end
