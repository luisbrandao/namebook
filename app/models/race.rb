class Race < ActiveRecord::Base
  attr_accessible :descr, :id, :nome
  
  validates_presence_of :nome
  validates :nome, :uniqueness => true
end
