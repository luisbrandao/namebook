class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :total
      t.integer :person_id

      t.timestamps
    end
  end
end
