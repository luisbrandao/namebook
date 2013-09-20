class Book < ActiveRecord::Base
  has_and_belongs_to_many :orbs
  has_and_belongs_to_many :ships
  has_and_belongs_to_many :families
  has_and_belongs_to_many :names
  has_and_belongs_to_many :races
  
  attr_accessible :dataf, :datai, :descr, :nome, :race_ids
  
  validates :nome, uniqueness: true, presence: true
end
