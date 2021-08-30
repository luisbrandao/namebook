class CreateBooksNamesJoinTable < ActiveRecord::Migration[6.1]
  def up
    create_table :books_names, :id => false do |t|
      t.references :book, :name
    end
  end

  def down
    drop_table :books_names
  end
end
