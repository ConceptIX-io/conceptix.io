start-dev:
	@find ./ -type f -name "*.html" -exec sed -i '' 's/https\:\/\/conceptix\.io/http\:\/\/localhost/g' {} +
	@docker compose -f docker-compose.dev.yml up
	@find ./ -type f -name "*.html" -exec sed -i '' 's/http\:\/\/localhost/https\:\/\/conceptix\.io/g' {} +

stop-dev:
	@docker compose -f docker-compose.dev.yml down
