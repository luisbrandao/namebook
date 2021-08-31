# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BaseType.create(:name => "Techmaga")
BaseType.create(:name => "Orgânica")
BaseType.create(:name => "Nanorobótica")
BaseType.create(:name => "Tecnológica pura")
BaseType.create(:name => "Hibrida techmaga/organica")
OrbType.create(:name => "Planeta")
OrbType.create(:name => "Lua")
OrbType.create(:name => "Estrela")
OrbType.create(:name => "Cinturão de asteroides")
OrbType.create(:name => "Estação espacial")
Race.create(:name => "Humano", :descr => "Humanos são uma raça normal.")
Race.create(:name => "Newkie", :descr => "Uma raça criada artificialmente. Pelos humanos.")
Race.create(:name => "Lobisomem", :descr => "Raça originaria de Hollus capaz de se transformar na forma de um lobo.")
Race.create(:name => "Dragão", :descr => "Os dragões conviveram com os plyorns antes da chegada dos newkies a galaxia.\r\nMesmo sendo uma raça inteligente, os dragões estão presos em um eterno período tribal. Seus braços não permitem o manuseio de ferramentas ou aparelhos delicados, sendo justamente por isso que suas obras máximas se resumem a rústicas cidades de barro e à complexa escrita rúnica, geralmente feita em paredes de pedra ou grandes placas de argila.\r\nMesmo sem conseguir desenvolver sua própria tecnologia, os dragões são capazes de entender as criações de outros povos e até operá-las, se algumas modificações forem feitas. Muitas vezes, aparelhos eletrônicos e até instalações mais complexas são trocados por metais e pedras preciosas, bens que os dragões parecem ter certa facilidade em encontrar e gosto em colecionar. ")
Race.create(:name => "Arcain", :descr => "Raça com características de raposa originara da lua Sikeya, no sistema de wolmrom-3")
Race.create(:name => "Consciência independente", :descr => "Consciências independentes são aquelas que existem independentemente de um corpo físico bem definido.")
Race.create(:name => "Espírito da lua", :descr => "Um espirito da lua é a manifestação física do espirito de uma lua, que pode ser invocado somente por um processo denominado \"Ritual da lua\" desenvolvido originalmente pelos lobisomens, no planeta Hollus.")
Race.create(:name => "Hibrido newkie-humano", :descr => "Resultado da união entre um humano e um newkie.")
Race.create(:name => "Inteligencia artificial", :descr => "Inteligencias artificiais são maquinas inteligentes. A grande maioria das IA são de origem nanorobótica.")
ShipSize.create(:name => "Nave de guerra")
ShipSize.create(:name => "Cruzador")
ShipSize.create(:name => "Estrela")
ShipSize.create(:name => "Explorador")
ShipSize.create(:name => "Transportador")
ShipSize.create(:name => "Caça")
