FROM ruby:2.6.8-alpine
#FROM centos:7
MAINTAINER Luis Alexandre Deschamps Brandão <techmago@ymail.com>

RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN apk --update add git make gcc mysql-dev nodejs nodejs-dev sqlite-dev patch musl-dev tzdata g++
RUN gem update bundler

ADD . /app
WORKDIR /app

ENV RAILS_ENV=production
RUN bundle install
RUN bundle exec rake assets:precompile

EXPOSE 3010
ENTRYPOINT ["/app/start.sh"]
