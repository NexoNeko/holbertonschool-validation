lint: ## Fail when the linter catches an error
	@markdownlint DEPLOY.md README.md
	@hadolint ./.build/Dockerfile || true

build: lint check ## Generate the website from the markdown and configuration files in the directory dist/
	@docker run --volume ${GITHUB_WORKSPACE}/module4_task1/:/go golang:1.15.8-buster ls && go build
	@hugo > /dev/null 2>&1

build-docker: ## Build a docker image named awesome:build from the Dockerfile
	@docker build -t awesome:build ./.build

run: ## Run the application in background by executing the binary awesome-api
	@./awesome-api >./awesome-api.log 2>&1 &

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@echo "---\
	title: '$(POST_TITLE)'\
	date: $(date +"%Y-%m-%dT%H:%M:%S%z")\
	---" > content/posts/$(POST_NAME).md

stop: ## Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application
	@pkill awesome-api

clean: ## Cleanup the content of the directory dist/ and awesome-api/awesome-api.log files
	@rm -rf dist
	@rm -f awesome-api awesome-api.log coverage-units.out coverage-integrations.out
	@pkill awesome-api

test: unit-tests integration-tests validate ## Test it to ensure that it behaves as expected

docker-tests: ## Test the generated Docker Image
	container-structure-test test --image awesome:build --config ./.build/cst.yml || true

help: ## Show this help usage
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)

unit-tests: ## Execute the Golang unit tests
	@docker run --volume ${GITHUB_WORKSPACE}/module4_task1/:/go golang:1.15.8-buster ls && go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Execute the Golang integration tests
	@docker run --volume ${GITHUB_WORKSPACE}/module4_task1/:/go golang:1.15.8-buster ls && go test -v -coverprofile=coverage-integrations.out

check: ## Succeed by default, and fail when presented with a dead link or a badly written Markdown file
	@markdownlint ./content/posts/*
	@markdown-link-check ./content/posts/*

validate: ## Always succeed by default and should print the result on the stdout
	@./W3C-Validator/w3c_validator.py ./dist/index.html || true

package: ## Produces a file awesome-website.zip, containing the binary awesome-api and the directory dist/ directory
	zip -r awesome-website awesome-api dist/
