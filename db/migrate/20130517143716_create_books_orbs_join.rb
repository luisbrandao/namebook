class CreateBooksOrbsJoin < ActiveRecord::Migration
  def up
    create_table 'books_orbs', :id => false do |t|
      t.column 'book_id', :integer
      t.column 'orb_id', :integer
    end
  end

  def down
    drop_table 'books_orbs'
  end
end
