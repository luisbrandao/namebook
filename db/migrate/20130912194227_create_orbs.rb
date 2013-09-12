class CreateOrbs < ActiveRecord::Migration
  def change
    create_table :orbs do |t|
      t.string :nome
      t.string :orbita
      t.text :descr

      t.timestamps
    end
  end
end
