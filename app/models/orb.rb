class Orb < ActiveRecord::Base
  has_many :orbTypes
  validates_associated :orbTypes
  
  attr_accessible :descr, :nome, :orbType_id, :orb_id, :orbita
  
  validates :nome, uniqueness: true, presence: true
  
end
