# Basic Containerized Ruby on Rails App

Based on `rails new <app>`

# Versions
Ruby 3.4.2
Rails 8.0.1

# To run from Docker
1. Run the following:
```
docker-compose up -d
```
2. Navigate to: http://localhost:3000/

# To run locally without Docker
1. Run the following:
```
bin/rails server
```
2. Navigate to: http://localhost:3000/

# To access database
Navigate to http://localhost:8082/

# Logging In
1. Use the following credentials:
	a. Username: admin
	b. Password: test

# Terminal into the server on Docker
1. Run `docker exec -it ruby_web bash`

# To set keys and secrets in docker-compose.yml
1. Run `bin/rails db:encryption:init` from within the web container
2. Update ACTIVE_RECORD_* keys based on the results