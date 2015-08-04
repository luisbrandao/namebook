class BaseType < ActiveRecord::Base
  has_many :ships, dependent: :restrict_with_error

  validates :nome, uniqueness: true, presence: true
end
