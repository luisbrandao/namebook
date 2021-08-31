#!/bin/sh
export RAILS_ENV=production
bundle exec rails db:migrate
rm -f "tmp/pids/server.pid"
rails s -b 0.0.0.0 --environment=production -p 3010
