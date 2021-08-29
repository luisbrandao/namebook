FROM ruby:2.1-alpine
#FROM centos:7
MAINTAINER Luis Alexandre Deschamps Brandão <techmago@ymail.com>

RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN apk --update add git make gcc mysql-dev nodejs nodejs-dev sqlite-dev patch musl-dev tzdata

ADD . /app
WORKDIR /app

RUN bundle install

EXPOSE 3000
ENTRYPOINT ["/app/start.sh"]
