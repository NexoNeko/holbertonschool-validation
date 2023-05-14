lint:
	## Check for errors in the code before building
	@golangci-lint run main.go
build: go.sum
	## Compile the source code of the application to a binary named awesome-api. The initial build might take some time.
	@go build -o awesome-api main.go

run: awesome-api
	## Execute the binary awesome-api in the background and write logs to awesome-api.log.
	@./awesome-api > ./awesome-api.log 2>&1 &

stop: awesome-api.log
	## Stop the running application.
	@pkill awesome-api

clean: awesome-api awesome-api.log
	## Stop the application, and remove the awesome-api binary and awesome-api.log.
	@pkill awesome-api
	@rm awesome-api awesome-api.log

test: awesome-api awesome-api.log
	## Perform tests on ports 9999 and health endpoint.
	curl http://localhost:9999
	curl http://localhost:9999/health

help:	
	## Display usage information
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
