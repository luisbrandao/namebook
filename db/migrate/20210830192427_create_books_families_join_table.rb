class CreateBooksFamiliesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :books, :families do |t|
      # t.index [:book_id, :family_id]
      # t.index [:family_id, :book_id]
    end
  end
end
