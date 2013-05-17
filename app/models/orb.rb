class Orb < ActiveRecord::Base
  attr_accessible :descr, :id, :nome, :orb_type_id, :orbt
  
  validates_presence_of :nome, :orb_type_id
  validates :nome, :uniqueness => true
  
  belongs_to :orb_type
  
  has_and_belongs_to_many :book
end
