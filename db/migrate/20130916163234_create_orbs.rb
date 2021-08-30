class CreateOrbs < ActiveRecord::Migration[6.1]
  def change
    create_table :orbs do |t|
      t.string :nome
      t.text :descr
      t.integer :orb_type_id

      t.timestamps
    end
  end
end
