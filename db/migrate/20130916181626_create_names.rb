class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :nome
      t.text :descr
      t.integer :race_id
      t.integer :family_id

      t.timestamps
    end
  end
end
