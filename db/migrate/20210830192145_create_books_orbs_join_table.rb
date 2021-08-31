class CreateBooksOrbsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :books, :orbs do |t|
      # t.index [:book_id, :orb_id]
      # t.index [:orb_id, :book_id]
    end
  end
end
