class CreateBooksShipsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :books, :ships do |t|
      # t.index [:book_id, :ship_id]
      # t.index [:ship_id, :book_id]
    end
  end
end
