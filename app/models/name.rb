class Name < ActiveRecord::Base
  attr_accessible :book_id, :descr, :family_id, :id, :nome, :race_id
  
  validates_presence_of :nome
  validates :nome, :uniqueness => true
end
