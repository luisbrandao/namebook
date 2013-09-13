class OrbType < ActiveRecord::Base
  attr_accessible :nome

  validates :nome, uniqueness: true, presence: true

end
