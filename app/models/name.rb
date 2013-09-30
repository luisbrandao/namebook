class Name < ActiveRecord::Base
  belongs_to :family
  belongs_to :race
  has_and_belongs_to_many :books, :join_table => "books_names"
  
  attr_accessible :descr, :family_id, :nome, :race_id, :book_ids
  
  validates :nome, presence: true
  validates :race_id, presence: true
end
