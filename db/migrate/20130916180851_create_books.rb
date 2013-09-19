class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :nome
      t.text :descr
      t.string :datai
      t.string :dataf

      t.timestamps
    end
  end
end
