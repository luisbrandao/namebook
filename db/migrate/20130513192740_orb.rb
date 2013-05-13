class Orb < ActiveRecord::Migration
  def up
	remove_column :orbs, :book_id
  end

  def down
  end
end
