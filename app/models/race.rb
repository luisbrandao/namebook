#encoding: utf-8
class Race < ActiveRecord::Base
  has_many :names, dependent: :restrict_with_error
  has_and_belongs_to_many :books, :join_table => "books_races"
  has_and_belongs_to_many :families, :join_table => "families_races"

  validates :nome, uniqueness: true, presence: true

  def to_s
    nome
  end
end
