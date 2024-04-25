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

Para desenvolver, usar o docker de dev:

```
docker build -f Dockerfile.dev -t registry.techsytes.com/namebook-rails:dev .
docker run --name namedev -v $(pwd):/app -p 3010:3010 -it registry.techsytes.com/namebook-rails:dev
```

Uma vez dentro do container, é necessário executar a preparação do ambiente

```
bundle install
yarn install
```

Execute todas as migrações:

```
rails db:create db:migrate
```

Inicialize o servidor em modo de desenvolvimento:

```
rails server
```

Agora você pode usar o sistema em modo desenvolvimento através de qualquer navegador acessando o endereço:

```
http://localhost:3010
```

Build para produção:
```
docker build  -t registry.techsytes.com/namebook-rails:master-03 .
docker push registry.techsytes.com/namebook-rails:master-03
```

Em prod, rodar passando:
SITE_USER=user
SITE_PASSWORD=password

bundler-audit --update
brakeman -q -w2
