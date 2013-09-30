class Family < ActiveRecord::Base
  has_many :names
  has_and_belongs_to_many :books, :join_table => "books_families"
  has_and_belongs_to_many :races, :join_table => "families_races"
  
  attr_accessible :descr, :nome, :book_ids, :race_ids
  
  validates :nome, uniqueness: true, presence: true
end
