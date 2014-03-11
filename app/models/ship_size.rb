#encoding: utf-8
class ShipSize < ActiveRecord::Base
  has_many :ships

  attr_accessible :nome
  
  validates :nome, uniqueness: true, presence: true
end
