class CreateOrbs < ActiveRecord::Migration
  def change
    create_table :orbs do |t|
      t.string :nome
      t.string :orbita
      t.text :descr
      t.integer :orbType_id
      t.integer :orb_id

      t.timestamps
    end
  end
end
