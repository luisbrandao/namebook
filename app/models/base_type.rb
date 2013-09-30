class BaseType < ActiveRecord::Base
  has_many :ships

  attr_accessible :nome
  
  validates :nome, uniqueness: true, presence: true
end
