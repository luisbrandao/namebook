class CreateFamilies < ActiveRecord::Migration[6.1]
  def change
    create_table :families do |t|
      t.string :nome
      t.text :descr

      t.timestamps
    end
  end
end
