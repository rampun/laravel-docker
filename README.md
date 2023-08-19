## Laravel Docker

A simple docker setup for laravel without Sail

## Usage

Clone the project
```
git clone git@github.com:rampun/laravel-docker.git
```

Go to project directory
```
cd laravel-docker
```

Run the make setup command
```
make setup
```

Access the laravel app as
http://localhost:900

Please check the following make commands; 
```
setup:
	@make build
	@make up
	@make composer-update
build:
	docker-compose build --no-cache --force-rm
down:
	docker-compose down
up:
	docker-compose up -d
api:
	docker exec -it app bash
composer-update:
	docker exec app bash -c "composer update"
migrate:
	docker exec app bash -c "php artisan migrate"
	docker exec app bash -c "php artisan db:seed"
```

You can run the command as:
``` make up ``` to run the docker-compose up -d

