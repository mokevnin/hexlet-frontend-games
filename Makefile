test:
	npm run test

setup:
	cp -n .env.example development.env || true
	npm run fixtures:load


install:
	npm install

start:
	npm run start:dev

lint:
	npm run lint

db-up:
	docker-compose up -d
db-down:
	docker-compose down

db-console:
	psql -p 15023 -h localhost -U test -d interview
db-console-test:
	psql -p 15025 -h localhost -U test -d interview-test

fixtures-load:
	npm run fixtures:load

.PHONY: test
