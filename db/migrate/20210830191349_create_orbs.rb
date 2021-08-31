class CreateOrbs < ActiveRecord::Migration[6.1]
  def change
    create_table :orbs do |t|
      t.string :nome, null: false
      t.text :descr
      t.references :orb_type, null: false, foreign_key: true
      t.references :orbit, foreign_key: true

      t.timestamps
    end
  end
end
