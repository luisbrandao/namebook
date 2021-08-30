class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.string :nome
      t.text :descr

      t.timestamps
    end
  end
end
