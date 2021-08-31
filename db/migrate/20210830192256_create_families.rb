class CreateFamilies < ActiveRecord::Migration[6.1]
  def change
    create_table :families do |t|
      t.string :nome, null: false
      t.text :descr

      t.timestamps
    end
  end
end
