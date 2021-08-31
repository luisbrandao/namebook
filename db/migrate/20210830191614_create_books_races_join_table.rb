class CreateBooksRacesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :books, :races do |t|
      # t.index [:book_id, :race_id]
      # t.index [:race_id, :book_id]
    end
  end
end
