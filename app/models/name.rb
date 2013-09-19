class Name < ActiveRecord::Base
  belongs_to :family
  belongs_to :race
  has_and_belongs_to_many :books
  
  attr_accessible :descr, :family_id, :nome, :race_id, :book_ids
  
  validates :nome, presence: true
end
