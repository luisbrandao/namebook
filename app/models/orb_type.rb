class OrbType < ActiveRecord::Base
  attr_accessible :id, :nome
  
  validates_presence_of :nome
  validates :nome, :uniqueness => true

  has_many :orbs
end
