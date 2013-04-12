class CreateOrbs < ActiveRecord::Migration
  def change
    create_table :orbs do |t|
      t.integer :id
      t.string :nome
      t.integer :orbt
      t.text :descr
      t.integer :book_id
      t.integer :orb_type_id

      t.timestamps
    end
  end
end
