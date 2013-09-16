class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :nome
      t.text :descr

      t.timestamps
    end
  end
end
