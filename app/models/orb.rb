class Orb < ActiveRecord::Base
  attr_accessible :book_id, :descr, :id, :nome, :orb_type_id, :orbt
  
  belongs_to :book, :foreign_key => "book_id"
  belongs_to :orb_type_id, :foreign_key => "orb_type_id"
  
  validates_presence_of :nome, :orb_type_id
  validates :nome, :uniqueness => true
  
end
