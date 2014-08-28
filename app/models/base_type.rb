class BaseType < ActiveRecord::Base
  has_many :ships

  validates :nome, uniqueness: true, presence: true
end
