FROM ruby:3.4

WORKDIR /app

COPY . ./

RUN bundle install

# Entrypoint prepares the database.
ENTRYPOINT ["./bin/docker-entrypoint"]