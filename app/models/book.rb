#encoding: utf-8
class Book < ActiveRecord::Base
  has_and_belongs_to_many :orbs, :join_table => "books_orbs"
  has_and_belongs_to_many :ships, :join_table => "books_ships"
  has_and_belongs_to_many :families, :join_table => "books_families"
  has_and_belongs_to_many :names, :join_table => "books_names"
  has_and_belongs_to_many :races, :join_table => "books_races"

  validates :nome, uniqueness: true, presence: true

  def to_s
    nome
  end
end
