#encoding: utf-8
class Ship < ActiveRecord::Base
  belongs_to :ship_size
  belongs_to :base_type 
  has_and_belongs_to_many :books, :join_table => "books_ships"

  validates :nome, uniqueness: true, presence: true
  validates :books, presence: true

  def to_s
    nome
  end
end
