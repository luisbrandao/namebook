class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :id
      t.string :nome
      t.string :datai
      t.string :dataf
      t.text :descr

      t.timestamps
    end
  end
end
