#encoding: utf-8
class Name < ActiveRecord::Base
  belongs_to :family
  belongs_to :race
  has_and_belongs_to_many :books, :join_table => "books_names"
  
  attr_accessible :descr, :family_id, :nome, :race_id, :book_ids, :aparencia, :sexo
  
  validates :nome, presence: true
  validates :race_id, presence: true
  validate :has_books?
  
  def has_books?
    errors.add(:base, 'O nome deve estar em ao menos um livro') if self.books.blank?
  end

  def sexo_txt
    ["", "Masculino", "Feminino"][self.sexo - 1]
  end
end


