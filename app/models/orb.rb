class Orb < ActiveRecord::Base
  has_many :orb_types
  validates_associated :orb_types

  attr_accessible :descr, :nome, :orb_type_id


  validates :nome, uniqueness: true, presence: true
end
