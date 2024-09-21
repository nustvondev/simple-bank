DB_URL=postgresql://hoanh:password@localhost:5432/simplebank?sslmode=disable

migrate:
	@echo "Migrating database..."
	migrate -path db/migration -database "$(DB_URL)" -verbose up

.PHONY: migrate