class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :nome, null: false
      t.text :descr
      t.string :datai
      t.string :dataf

      t.timestamps
    end
  end
end
