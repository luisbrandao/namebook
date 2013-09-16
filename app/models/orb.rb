class Orb < ActiveRecord::Base
  belongs_to :orb_type

  attr_accessible :descr, :nome, :orb_type_id

  validates :nome, uniqueness: true, presence: true
end
