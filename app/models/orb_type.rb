#encoding: utf-8
class OrbType < ActiveRecord::Base
  has_many :orbs, dependent: :restrict_with_error

  validates :nome, uniqueness: true, presence: true
end
