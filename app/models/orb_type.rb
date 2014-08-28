#encoding: utf-8
class OrbType < ActiveRecord::Base
  has_many :orbs

  validates :nome, uniqueness: true, presence: true
end
