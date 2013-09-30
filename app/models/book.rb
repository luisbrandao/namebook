class Book < ActiveRecord::Base
  has_and_belongs_to_many :orbs, :join_table => "books_orbs"
  has_and_belongs_to_many :ships, :join_table => "books_ships"
  has_and_belongs_to_many :families, :join_table => "books_families"
  has_and_belongs_to_many :names, :join_table => "books_names"
  has_and_belongs_to_many :races, :join_table => "books_races"
  
  attr_accessible :dataf, :datai, :descr, :nome, :race_ids
  
  validates :nome, uniqueness: true, presence: true
end
