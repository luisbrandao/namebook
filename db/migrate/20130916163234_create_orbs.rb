class CreateOrbs < ActiveRecord::Migration
  def change
    create_table :orbs do |t|
      t.string :nome
      t.text :descr
      t.integer :orb_type_id

      t.timestamps
    end
  end
end
