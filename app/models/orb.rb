class Orb < ActiveRecord::Base
  attr_accessible :descr, :nome, :orbita
  
  validates :nome, uniqueness: true, presence: true
  
end
