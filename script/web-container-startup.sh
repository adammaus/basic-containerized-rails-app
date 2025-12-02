#!/bin/sh

# Install anything not already in the Gemfile.lock
bundle install

# Start server
bash -c "
  set -e

  if [ -f tmp/pids/server.pid ]; then
    rm tmp/pids/server.pid
  fi

  bundle exec rails s -b 0.0.0.0
" &

# Set up the database
bin/rails db:environment:set RAILS_ENV=development
rake db:drop
rake db:create

# Create schema (db/schema.rb)
rake db:schema:load

# Seed database (db/seeds.rb)
rake db:seed

# Need this to keep container running
sleep infinity