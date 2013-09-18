class CreateBooksFamiliesJoinTable < ActiveRecord::Migration
  def up
    create_table :books_families do |t|
      t.references :book, :family
    end
  end

  def down
    drop_table :books_families
  end
end
