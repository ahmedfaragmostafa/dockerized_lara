.DEFAULT_GOAL := up

help:
	@echo ""
	@echo "Available tasks:"
	@echo "    install 		Init your project"
	@echo "    up 			Docker compose up"
	@echo "    exec 		Make exec c='command to run'"
	@echo "    down 		Docker compose down"
	@echo "    clean 		Remove unused containers & images"
	@echo "    clear 		Clear logs and flush redis"
	@echo "    exec 		Execute command inside docker php "
	@echo "    php 		Access php image "
	@echo ""

install:
	git clone git@github.com:laravel/laravel.git app
	docker-compose build
	docker-compose up -d
	docker exec -it dockerized_lara_php bash -c "composer install"
	docker exec -it dockerized_lara_php bash -c "mv .env.example .env"
	docker exec -it dockerized_lara_php bash -c "php artisan key:generate"

up:
	docker-compose build
	docker-compose up

clean:
	docker rm $(docker ps -q -f 'status=exited')
	docker rmi $(docker images -q -f "dangling=true")

exec:
	docker exec -it dockerized_lara_php bash -c "$(c)"
down:
	docker-compose down
php:
	docker exec -it dockerized_lara_php zsh
clear:
	cat /dev/null > storage/logs/laravel.log
	redis-cli  -h  127.0.0.1  -p 5379 FLUSHALL
