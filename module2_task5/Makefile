lint: ##Checks if code have no possible errors
	@golangci-lint run main.go

build: lint check##Compile the source code of the application to a binary named awesome-api, The first build may takes some time.
	@hugo
	@go build -o awesome-api/awesome-api main.go

run: ##Run the application in background by executing the binary awesome-api, and write logs into a file named awesome-api.log.
	@./awesome-api/awesome-api >./awesome-api.log 2>&1 &

stop: ##Stop the application.
	@pkill awesome-api

clean: ##Stop the application. Delete the binary awesome-api and the log file awesome-api.log 
	@rm -f awesome-api/awesome-api awesome-api.log
	@rm -f coverage_integrations.out coverage-units.out
	@rm -rf dist/

test: unit-tests integration-tests ##Tests ports 9999 and health

unit-tests: ## Execute unittests
	@go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Execute integration tests
	@go test -v -coverprofile=coverage-integrations.out 

post:## Create the '.md' files inside 'content/posts' with the attibutes neded. Atts: $POST_NAME, $POST_TITLE
	@hugo new posts/$(POST_NAME).md
	@echo "---\n\
	title: \"$(POST_TITLE)\"\n\
	date: $$(date +'%Y-%m-%dT%H:%M:%S%z')\n\
	draft: true\n\
	---" > content/posts/$(POST_NAME).md

check: ## Check something, we don't know what. 
	@markdownlint content/posts/*.md
	@markdown-link-check content/posts/*.md

validate: ## Validate html's
	@python3 /opt/W3C-Validator/w3c_validator.py dist/index.html || true

help:## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
