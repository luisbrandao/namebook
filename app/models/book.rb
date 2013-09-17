class Book < ActiveRecord::Base
  has_and_belongs_to_many :orbs
  
  attr_accessible :dataf, :datai, :descr, :nome
  
  validates :nome, uniqueness: true, presence: true
end
