class Orb < ActiveRecord::Base
  belongs_to :orb_type
  has_and_belongs_to_many :books

  attr_accessible :descr, :nome, :orb_type_id, :book_ids, :orbit_id

  has_many :orbters, class_name: "Orb", foreign_key: "orbit_id"
  belongs_to :orbit, class_name: "Orb"

  validates :nome, uniqueness: true, presence: true
end
