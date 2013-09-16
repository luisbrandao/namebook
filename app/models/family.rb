class Family < ActiveRecord::Base
  has_many :names
  
  attr_accessible :descr, :nome
  
  validates :nome, uniqueness: true, presence: true
end
