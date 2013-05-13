class Ship < ActiveRecord::Base
  attr_accessible :base_id, :book_id, :descr, :id, :nome, :size_id
  
  validates_presence_of :nome, :size_id
  validates :nome, :uniqueness => true
end
