class CreateBooksShipsJoinTable < ActiveRecord::Migration
  def up
      create_table :books_ships, :id => false do |t|
      t.references :book, :ship
    end
  end

  def down
    drop_table :books_ships
  end
end
