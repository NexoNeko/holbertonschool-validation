lint: ##Checks if code have no possible errors
	@golangci-lint run main.go

build: lint##Compile the source code of the application to a binary named awesome-api, The first build may takes some time.
	@go build -o awesome-api/awesome-api main.go

run: ##Run the application in background by executing the binary awesome-api, and write logs into a file named awesome-api.log.
	@./awesome-api/awesome-api >./awesome-api.log 2>&1 &

stop: ##Stop the application.
	@pkill awesome-api

clean: stop ##Stop the application. Delete the binary awesome-api and the log file awesome-api.log 
	@rm -f awesome-api/awesome-api awesome-api.log

test: ##Tests ports 9999 and health
	curl http://localhost:9999
	curl http://localhost:9999/health

help: ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
