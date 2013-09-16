class Book < ActiveRecord::Base
  
  
  attr_accessible :dataf, :datai, :descr, :nome
  
  validates :nome, uniqueness: true, presence: true
end
