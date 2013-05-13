#encoding: utf-8 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


race_list = [
  [ "Humano", "Humanos são uma raça normal." ],
  [ "Newkies", "Uma raça criada artificialmente. Pelos humanos." ],
  [ "Lobisomem", "Raça originaria de Hollus capaz de se transformar na forma de um lobo." ]
]

race_list.each do |name, description|
  Race.create( nome: name, descr: description )
end
  
