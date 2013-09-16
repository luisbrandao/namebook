class Person < ActiveRecord::Base
  attr_accessible :age, :age, :first_name, :first_name, :last_name, :last_name
  
  has_many :orders
end
