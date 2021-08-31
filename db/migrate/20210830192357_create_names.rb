class CreateNames < ActiveRecord::Migration[6.1]
  def change
    create_table :names do |t|
      t.string :nome, null: false
      t.string :aparencia
      t.integer :sexo, default: 1
      t.text :descr
      t.references :race, null: false, foreign_key: true
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
