# Namebook

Banco de dados de nomes para apoio literario.
 
## Historia

Sendo um dos meu hobbies escrever, o universo que ocorrem minhas historias ficou rapidamente bagunçado, com um numero muito grande de personages, e com informações importantes sobre eles diluidos no meio dos textos. O sistema do namebook foi criado para organizar os dados, e em vários casos, como atividade para experimentar novos mecanismos e linguagens.

A primeira versão do software se tratava apenas em duas tabelas no microsoft access. A primeira necessidade de mudança surgiu quando migrei meus documentos do windows para o linux. Ao invéz de refazer as tabelas no libreoffice, achei mais interssante desenhar um programa em BASH para cuidar da tarefa, e assim surgiu a primeira interação do software.

A verção em bash (talvez eu anexe como uma branch desconexa aqui) formatava os textos usando dialog. Foi implementado novos recursos, como os primeiros mecanismos de busca.

O proximo passo da versão em bash, foi a reimplementação do sistema em PHP, usando mysql como banco de dados. Ainda que nesse ponto, ainda nao existissem ligações entre as tabelas, o sistema passou a executar rapidamente (o bash demorava até 10 segundos pra montar as listas mais complexas).

Ao ser introduzido ao rails e tendo aprendido a modelar corretamente um banco de dados, executei a proxima iteração do sistema. Em rails, a implementação ocorreu utilizanado um modelo de banco de dados corretamente normalizado. A versão atual conta com uma interface agradavel implementada com bootstrap, validações adequadas em todos os modelos e filtros de pesquisas utilizando o ransack.

## Documentação

No diretorio doc/ estão os modelos do banco dadados, no formato do mysql-branch.

Para instalar o sistema, inicialmente é necessário instalar a linguagem ruby e o framework Rails. Utilizaremos para esta tarefa a ferramenta rvm, que ajuda no gerenciamento de versões e nas instalações. Em um shell execute o seguinte comando:

```
\curl -sSL https://get.rvm.io | bash -s stable --rails
```

O próprio rvm se preocupa em instalar a versão estável mais recente do ruby e a flag --rails informa que desejamos instalar o framework Rails na sequência. Os fontes podem ser baixados do github utilizando o clone do git:

```
git clone https://github.com/techmago/namebook
```

Depois de baixado, precisamos encontrar as depências de gemas do sistema. Elas podem ser vistas num arquivo chamado Gemfile que fica dentro do diretório raíz da aplicação. Para baixá-las utilizamos o seguinte comando:

```
bundle install
```

Execute todas as migrações:

```
rake db:create db:migrate db:seed
```

Inicialize o servidor em modo de desenvolvimento:

```
rails server
```

Agora você pode usar o sistema em modo desenvolvimento através de qualquer navegador acessando o endereço:

```
http://localhost:3000
```




