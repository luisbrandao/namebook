class Family < ActiveRecord::Base
  has_many :names
  has_and_belongs_to_many :books
  
  attr_accessible :descr, :nome, :book_ids
  
  validates :nome, uniqueness: true, presence: true
end
