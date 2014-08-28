#encoding: utf-8
class ShipSize < ActiveRecord::Base
  has_many :ships

  validates :nome, uniqueness: true, presence: true
end
