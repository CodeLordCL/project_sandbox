# Makefile

# App macros

app-init:
	docker compose build

app-start:
	docker compose up app

app-bundle:
	docker compose run --rm app bundle

app-bash:
	docker compose run --rm app bash

app-db-init:
	docker compose run --rm app rails db:create db:migrate

app-db-migrate:
	docker compose run --rm app rails db:migrate

# DB macros

db-start:
	docker compose up -d db

db-stop:
	docker compose stop db

db-log:
	docker compose logs db

