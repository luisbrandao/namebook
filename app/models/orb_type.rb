#encoding: utf-8
class OrbType < ActiveRecord::Base
  has_many :orbs

  attr_accessible :nome

  validates :nome, uniqueness: true, presence: true
end
