FROM docker.io/library/ruby:3.2.4-alpine

RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    gem update bundler && \
    apk --no-cache add git make gcc mysql-dev sqlite-dev nodejs nodejs-dev patch musl-dev tzdata g++ yarn

COPY . /app
WORKDIR /app

ENV RAILS_ENV=production
ENV NODE_OPTIONS=--openssl-legacy-provider
RUN bundle install && \
    yarn install && yarn cache clean && \
    bundle exec rake assets:precompile && \
    rm -rf node_modules

EXPOSE 3010
CMD ["/app/start.sh"]
