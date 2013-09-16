class Ship < ActiveRecord::Base
  belongs_to :ship_size
  belongs_to :base_type 

  attr_accessible :base_type_id, :descr, :nome, :ship_size_id
  
  validates :nome, uniqueness: true, presence: true
end
