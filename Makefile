setup:
	@make build
	@make up 
	@make composer-update
build:
	docker compose build 
stop:
	docker compose stop
up:
	docker compose up -d
composer-update:
	docker exec staging03 bash -c "composer update"
data:
	docker exec staging03 bash -c "php artisan migrate:fresh --seed"
bash:
	docker exec -it staging03 bash
start:
	docker compose restart
