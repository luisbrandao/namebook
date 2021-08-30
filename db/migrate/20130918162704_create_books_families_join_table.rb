class CreateBooksFamiliesJoinTable < ActiveRecord::Migration[6.1]
  def up
    create_table :books_families, :id => false do |t|
    t.references :book, :family
    end
  end

  def down
    drop_table :books_families
  end
end
