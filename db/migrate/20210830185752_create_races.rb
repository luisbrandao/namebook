class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.string :nome, null: false
      t.text :descr

      t.timestamps
    end
  end
end
