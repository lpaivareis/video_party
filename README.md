# Detalhes do projeto

## Objetivo

Este projeto é uma pequena aplicação para exibir salas de videos com videos embedados do YouTube.

## Configuração

Este projeto roda em **Ruby** na versão`3.0.2` utilizando **Rails** `7.0.4`. Se precisar você pode utilizar um gerenciador de versões para facilitar como o [ASDF](https://www.lucascaton.com.br/2020/02/17/instalacao-do-ruby-do-nodejs-no-ubuntu-linux-usando-asdf).

Neste projeto, estamos usando o PostgreSQL, se você precisar alterá-los para rodar em sua maquina local, você pode fazê-lo em [database.yml](config/database.yml).

Para executar o projeto siga os passos a abaixo:

```console
$ bundle install
$ bin/rails db:create && db:migrate
$ bin/rails server
```

Para qualidade de código e linter foi utilizado as gems rubocop, rubocop-rails e rubocop-performance. Você pode executar utilizando o comando abaixo:

```console
$ bundle exec rubocop
```

Para mais detalhes das gems utilizadas você pode consultar o arquivo [Gemfile](Gemfile)
