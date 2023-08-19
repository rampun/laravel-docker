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