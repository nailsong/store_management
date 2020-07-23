# Store Management

Store management is a Rest API for managing store stock.

## Ruby version:

* Ruby 2.6.5

## System dependencies:

* PostgreSQL

In development environment:

* [Docker](https://www.docker.com) - 19.03.12
* [Docker Compose](https://docs.docker.com/compose/) - 1.26.0

## Run app with docker compose:
```bash
git clone git@github.com:nailsong/store_management.git
cd store_management
docker-compose build
docker-compose up
```

## How to run the test suite:
```bash
docker-compose run --rm app bundle exec rspec
```
