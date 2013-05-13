class Family < ActiveRecord::Base
  attr_accessible :book_id, :descr, :id, :nome, :race_id
  
  validates_presence_of :nome
  validates :nome, :uniqueness => true
end
