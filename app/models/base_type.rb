class BaseType < ActiveRecord::Base
  attr_accessible :nome
  
  has_many :ships
  
  validates :nome, uniqueness: true, presence: true
end
