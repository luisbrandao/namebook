class Ship < ActiveRecord::Base
  belongs_to :ship_size
  belongs_to :base_type 
  has_and_belongs_to_many :books

  attr_accessible :base_type_id, :descr, :nome, :ship_size_id, :book_ids
  
  validates :nome, uniqueness: true, presence: true
end
