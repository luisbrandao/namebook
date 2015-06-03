#encoding: utf-8
class Name < ActiveRecord::Base
  belongs_to :family
  belongs_to :race
  has_and_belongs_to_many :books, :join_table => "books_names"
  
  validates :nome, presence: true
  validates :race_id, presence: true
  validates :books, presence: true

  def sexo_txt
    ["", "Masculino", "Feminino"][self.sexo - 1]
  end
end


