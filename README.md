# Namebook

Banco de dados de nomes para apoio literário.
 
## Historia

Sendo um dos meu hobbies escrever, o universo que ocorrem minhas historias ficou rapidamente bagunçado, com um numero muito grande de personagens, e com informações importantes sobre eles diluídos no meio dos textos. O sistema do Namebook foi criado para organizar os dados, e em vários casos, como atividade para experimentar novos mecanismos e linguagens.

A primeira versão do software se tratava apenas em duas tabelas no Microsoft Access. A primeira necessidade de mudança surgiu quando migrei meus documentos do Windows para o Linux. Ao invés de refazer as tabelas no LibreOffice, achei mais interessante desenhar um programa em BASH para cuidar da tarefa, e assim surgiu a primeira interação do software.

A versão em Bash (talvez eu anexe como uma branch desconexa aqui) formatava os textos usando Dialog. Foi implementado novos recursos, como os primeiros mecanismos de busca.

O próximo passo da versão em Bash, foi a reimplementação do sistema em PHP, usando MySQL como banco de dados. Ainda que nesse ponto, ainda não existissem ligações entre as tabelas, o sistema passou a executar rapidamente (o Bash demorava até 10 segundos pra montar as listas mais complexas).

Ao ser introduzido ao Rails e tendo aprendido a modelar corretamente um banco de dados, executei a próxima iteração do sistema. Em Rails, a implementação ocorreu utilizando um modelo de banco de dados corretamente normalizado. A versão atual conta com uma interface agradável implementada com Bootstrap, validações adequadas em todos os modelos e filtros de pesquisas utilizando o Ransack.

## Documentação

No diretório doc/ estão os modelos do banco de dados, no formato do MySQL Workbench.

Para instalar o sistema, inicialmente é necessário instalar a linguagem Ruby e o framework Rails. Utilizaremos para esta tarefa a ferramenta RVM, que ajuda no gerenciamento de versões e nas instalações. Em um shell execute o seguinte comando:

```
\curl -sSL https://get.rvm.io | bash -s stable --rails
```

O próprio RVM se preocupa em instalar a versão estável mais recente do ruby e a flag --rails informa que desejamos instalar o framework Rails na sequência. O fonte podem ser baixados do github utilizando o clone do git:

```
git clone https://github.com/techmago/namebook
```

Depois de baixado, precisamos encontrar as dependências de gemas do sistema. Elas podem ser vistas num arquivo chamado Gemfile que fica dentro do diretório raiz da aplicação. Para baixá-las utilizamos o seguinte comando:

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



