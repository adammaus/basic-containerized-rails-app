ARG RUBY_VERSION=3.4.2
FROM ruby:$RUBY_VERSION

WORKDIR /app

COPY . ./

RUN bundle install

# Entrypoint prepares the database.
ENTRYPOINT ["./bin/docker-entrypoint"]