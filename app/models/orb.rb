#encoding: utf-8
class Orb < ActiveRecord::Base
  belongs_to :orb_type
  has_and_belongs_to_many :books, :join_table => "books_orbs"

  has_many :orbters, class_name: "Orb", foreign_key: "orbit_id"
  belongs_to :orbit, class_name: "Orb"

  validates :nome, uniqueness: true, presence: true
  validate :has_books?
  
  def has_books?
    errors.add(:base, 'O corpo celeste deve estar em ao menos um livro') if self.books.blank?
  end
end
