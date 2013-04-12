class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :id
      t.string :nome

      t.timestamps
    end
  end
end
