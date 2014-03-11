#encoding: utf-8
class Family < ActiveRecord::Base
  has_many :names
  has_and_belongs_to_many :books, :join_table => "books_families"
  has_and_belongs_to_many :races, :join_table => "families_races"
  
  attr_accessible :descr, :nome, :book_ids, :race_ids
  
  validates :nome, uniqueness: true, presence: true
  validate :has_books?
  validate :has_races?
  
  def has_books?
    errors.add(:base, 'A família deve estar em ao menos um livro') if self.books.blank?
  end
  
  def has_races?
    errors.add(:base, 'A família deve ter pelo menos uma raça') if self.books.blank?
  end
end
