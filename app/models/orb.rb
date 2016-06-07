#encoding: utf-8
class Orb < ActiveRecord::Base
  belongs_to :orb_type
  has_and_belongs_to_many :books, :join_table => "books_orbs"

  has_many :orbters, class_name: "Orb", foreign_key: "orbit_id"
  belongs_to :orbit, class_name: "Orb"

  validates :nome, uniqueness: true, presence: true
  validates :books, presence: true

  def to_s
    nome
  end
end
