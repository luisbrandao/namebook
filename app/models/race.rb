class Race < ActiveRecord::Base
  has_many :names
  has_and_belongs_to_many :families
  has_and_belongs_to_many :books

  attr_accessible :descr, :nome
  
  validates :nome, uniqueness: true, presence: true
end
