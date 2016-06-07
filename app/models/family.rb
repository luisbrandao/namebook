#encoding: utf-8
class Family < ActiveRecord::Base
  has_many :names, dependent: :restrict_with_error
  has_and_belongs_to_many :books, :join_table => "books_families"
  has_and_belongs_to_many :races, :join_table => "families_races"
  
  validates :nome, uniqueness: true, presence: true
  validates :books, :races, presence: true

  def to_s
    nome
  end
end
