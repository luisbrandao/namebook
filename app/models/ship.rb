#encoding: utf-8
class Ship < ActiveRecord::Base
  belongs_to :ship_size
  belongs_to :base_type 
  has_and_belongs_to_many :books, :join_table => "books_ships"

  attr_accessible :base_type_id, :descr, :nome, :ship_size_id, :book_ids
  
  validates :nome, uniqueness: true, presence: true
  validate :has_books?
  
  def has_books?
    errors.add(:base, 'A nave deve estar em ao menos um livro') if self.books.blank?
  end
end
