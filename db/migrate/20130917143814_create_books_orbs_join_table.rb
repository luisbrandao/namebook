class CreateBooksOrbsJoinTable < ActiveRecord::Migration
  def up
    create_table :books_orbs, :id => false do |t|
      t.references :book, :orb
    end
  end

  def down
    drop_table :books_orbs
  end
end
