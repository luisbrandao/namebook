class Orb < ActiveRecord::Base
  belongs_to :orb_type
  has_and_belongs_to_many :books, :join_table => "books_orbs"

  has_many :orbters, class_name: "Orb", foreign_key: "orbit_id"
  belongs_to :orbit, class_name: "Orb"

  attr_accessible :descr, :nome, :orb_type_id, :book_ids, :orbit_id

  validates :nome, uniqueness: true, presence: true
end
