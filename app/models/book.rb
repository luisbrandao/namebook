class Book < ActiveRecord::Base
  attr_accessible :dataf, :datai, :descr, :id, :nome
  
  validates_presence_of :nome
  validates :nome, :uniqueness => true
  
  has_and_belongs_to_many :orb
end
