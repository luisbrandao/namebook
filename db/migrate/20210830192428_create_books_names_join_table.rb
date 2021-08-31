class CreateBooksNamesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :books, :names do |t|
      # t.index [:book_id, :name_id]
      # t.index [:name_id, :book_id]
    end
  end
end
