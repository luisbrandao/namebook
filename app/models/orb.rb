class Orb < ActiveRecord::Base
  attr_accessible :book_id, :descr, :id, :nome, :orb_type_id, :orbt
  
  validates_presence_of :nome, :orb_type_id
  validates :nome, :uniqueness => true
  
  belongs_to :orb_type
end
