#encoding: utf-8 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BaseType.create(:id => 1, :nome => "Techmaga")
BaseType.create(:id => 2, :nome => "Orgânica")
BaseType.create(:id => 3, :nome => "Nanorobótica")
BaseType.create(:id => 4, :nome => "Tecnológica pura")
BaseType.create(:id => 5, :nome => "Hibrida techmaga/organica")

Book.create(:id => 1, :nome => "Ilhas de Batalha", :descr => "A historia de Negro, o dragão", :datai => "2003", :dataf => "2013")
Book.create(:id => 2, :nome => "Cristais", :descr => "A historia de um techmago", :datai => "2007", :dataf => "?")
Book.create(:id => 3, :nome => "Newkies")
Book.create(:id => 4, :nome => "Nova era")

Family.create(:id => 1, :nome => "Datter", :descr => "Branca e Auro não são parentes próximos, ainda que sejam da mesma família.")
Family.create(:id => 2, :nome => "Delcan", :descr => "Todos os lideres de castelo do planeta Batalha são dessa família. (Mas não necessariamente irmãos.)")
Family.create(:id => 3, :nome => "Erathur", :descr => "Uma das famílias que integram o clã estilha negra. Essa família não é uma das mais importantes.")
Family.create(:id => 4, :nome => "Foldane")
Family.create(:id => 5, :nome => "Gama Blackfield", :descr => "Família da protagonista do nova era. A parte newkie é da mãe e a parte humana é do pai da Nidja.")
Family.create(:id => 6, :nome => "Kreer", :descr => "Uma das fámilias da tribo dos lobisomens vermelhos.\r\nSildon e Kalryne são irmãos. Kalryne é a mais nova.")
Family.create(:id => 7, :nome => "Lelin", :descr => "Foi essa familia que originalmente criou os felks.")
Family.create(:id => 8, :nome => "Mabert", :descr => "Uma família antiga e pouco conhecida aos dragões comuns. Geralmente seus membros tem atribuições importantes.")
Family.create(:id => 9, :nome => "Mainat", :descr => "Uma das famílias que integram o clã estilha negra. Essa família não é a mais importante, nem a menos.")
Family.create(:id => 10, :nome => "Morland")
Family.create(:id => 11, :nome => "Netrick", :descr => "Lyia é filha de Tieg e Lua, por ter sido simplesmente um \"presente\" da lua de Hollus (Luna), não tem realmente pais. Pode se dizer até que ela é adotada.")
Family.create(:id => 12, :nome => "Reaven", :descr => "Família do protagonista do newkies")
Family.create(:id => 13, :nome => "Ressek", :descr => "Uma das famílias da tribo dos lobisomens vermelhos.")
Family.create(:id => 14, :nome => "Rettack", :descr => "Família do líder dos lobos vermelhos. Não se sabe se Nith tem algum parentesco com Rayka.")
Family.create(:id => 15, :nome => "Ristair", :descr => "Família do protagonista do ilhas de batalha. Alguns membros certamente vivem em Xuim, uma vila próxima a um penhasco.")
Family.create(:id => 16, :nome => "Roanim")
Family.create(:id => 17, :nome => "Rollinor", :descr => "Família do líder dos lobisomens brancos.")
Family.create(:id => 18, :nome => "Sashvaret", :descr => "Uma das famílias da tribo dos lobisomens vermelhos.")
Family.create(:id => 19, :nome => "Sastar")
Family.create(:id => 20, :nome => "Shoukat")
Family.create(:id => 21, :nome => "Torcom")
Family.create(:id => 22, :nome => "Tuerem")
Family.create(:id => 23, :nome => "Tylladon", :descr => "Família do líder dos lobisomens negros. ")
Family.create(:id => 24, :nome => "Ducan")
Family.create(:id => 27, :nome => "Delta IV Beta X")

Name.create(:id => 1, :nome => "Accith", :descr => "Lobisomem vermelho, caçador experiente.", :race_id => 3, :family_id => 18)
Name.create(:id => 2, :nome => "Aline", :descr => "Responsável geral pela educação mágica. (Cúpula techmaga)", :race_id => 1, :family_id => 24)
Name.create(:id => 5, :nome => "Anna", :descr => "Cabelo/Olho azuis claros. Originalmente ela havia sido salva por Vitur em Oram, e ficou psicologicamente dependente dele.", :race_id => 1, :family_id => 26)
Name.create(:id => 6, :nome => "Argon", :descr => "Líder de um dos castelos do planeta batalha.", :race_id => 4, :family_id => 2)

OrbType.create(:id => 1, :nome => "Planeta")
OrbType.create(:id => 2, :nome => "Lua")
OrbType.create(:id => 3, :nome => "Estrela")
OrbType.create(:id => 4, :nome => "Cinturão de asteroides")
OrbType.create(:id => 5, :nome => "Estação espacial")

Race.create(:id => 1, :nome => "Humano", :descr => "Humanos são uma raça normal.")
Race.create(:id => 2, :nome => "Newkies", :descr => "Uma raça criada artificialmente. Pelos humanos.")
Race.create(:id => 3, :nome => "Lobisomem", :descr => "Raça originaria de Hollus capaz de se transformar na forma de um lobo.")
Race.create(:id => 4, :nome => "Dragão")
Race.create(:id => 5, :nome => "Arcain")
Race.create(:id => 6, :nome => "Consciência independente")
Race.create(:id => 7, :nome => "Espírito da lua")
Race.create(:id => 8, :nome => "Hibrido newkie-humano")
Race.create(:id => 9, :nome => "Nanorobô")

ShipSize.create(:id => 1, :nome => "Nave de guerra")
ShipSize.create(:id => 2, :nome => "Cruzador")
ShipSize.create(:id => 3, :nome => "Estrela")
ShipSize.create(:id => 4, :nome => "Explorador")
ShipSize.create(:id => 5, :nome => "Transportador")
ShipSize.create(:id => 6, :nome => "Caça")
