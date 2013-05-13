#encoding: utf-8 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

livros_list = [
  [ "Ilhas de Batalha", "2003","2013","A historia de Negro, o dragão" ],
  [ "Cristais", "2007","?","A historia de um techmago" ]
]

livros_list.each do |name,anoi,anof,description|
  Book.create( nome: name,datai: anoi,dataf: anof , descr: description )
end

race_list = [
  [ "Humano", "Humanos são uma raça normal." ],
  [ "Newkies", "Uma raça criada artificialmente. Pelos humanos." ],
  [ "Lobisomem", "Raça originaria de Hollus capaz de se transformar na forma de um lobo." ]
]

race_list.each do |name, description|
  Race.create( nome: name, descr: description )
end
 
orbTypes = OrbType.create([	{ nome: 'Planeta' },
							{ nome: 'Lua' },
							{ nome: 'Estrela' },
							{ nome: 'Cinturão de asteroides' }, 
							{ nome: 'Estação espacial' }]) 


tipoBase = BaseType.create([{ nome: 'Technave' },
							{ nome: 'Orgânica' },
							{ nome: 'Nanorobótica' },
							{ nome: 'Tecnológica pura' }])

size = Size.create([	{ nome: 'Nave de guerra' },
						{ nome: 'Cruzador' },
						{ nome: 'Estrela' },
						{ nome: 'Explorador' }, 
						{ nome: 'Transportador' }])
