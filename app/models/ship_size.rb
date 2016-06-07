#encoding: utf-8
class ShipSize < ActiveRecord::Base
  has_many :ships, dependent: :restrict_with_error

  validates :nome, uniqueness: true, presence: true

  def to_s
    nome
  end
end
