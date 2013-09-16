class Order < ActiveRecord::Base
  attr_accessible :person_id, :total
  
  belongs_to :person
end
