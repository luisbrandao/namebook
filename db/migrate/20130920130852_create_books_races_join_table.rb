class CreateBooksRacesJoinTable < ActiveRecord::Migration
  def up
    create_table :books_races do, :id => false |t|
      t.references :book, :race
    end
  end

  def down
    drop_table :books_races
  end
end
