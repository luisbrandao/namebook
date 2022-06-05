FROM ruby:2.7.4-alpine

RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    gem update bundler && \
    apk --no-cache add git make gcc mysql-dev nodejs nodejs-dev sqlite-dev patch musl-dev tzdata g++ yarn

COPY . /app
WORKDIR /app

ENV RAILS_ENV=production
RUN bundle install && \
    yarn install && yarn cache clean && \
    bundle exec rake assets:precompile

EXPOSE 3010
CMD ["/app/start.sh"]
