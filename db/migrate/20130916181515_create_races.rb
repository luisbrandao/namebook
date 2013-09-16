class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :nome
      t.text :descr

      t.timestamps
    end
  end
end
