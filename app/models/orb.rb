class Orb < ActiveRecord::Base
  belongs_to :orb_type
  has_and_belongs_to_many :books

  attr_accessible :descr, :nome, :orb_type_id, :book_ids

  validates :nome, uniqueness: true, presence: true
end
