class Name < ActiveRecord::Base
  belongs_to :family
  belongs_to :race
  
  attr_accessible :descr, :family_id, :nome, :race_id
  
  validates :nome, presence: true
end
