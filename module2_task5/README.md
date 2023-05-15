## Prerequisites

- Golang in v1.15.*
- NPM v7+ with NodeJS v14.* (stable)
- Python 3 with pip module
- golangci-lint

## Lifecycle

"build": Compiles the source code of the application into a binary named awesome-api (the name awesome-api is derived from the command go mod init github.com/<your GitHub handle>/awesome-api) using the command go build. The initial build may take some time.

"run": Executes the application in the background by running the binary awesome-api and writes logs to a file named awesome-api.log using the command ./awesome-api > ./awesome-api.log 2>&1 &.

"stop": Terminates the application by killing the process identified by its Process ID (PID). For example: kill "$(pgrep awesome-api)".

"clean": Stops the application, deletes the binary awesome-api, and removes the log file awesome-api.log.

"test": Executes all tests.

"help": Displays usage instructions and help.

"lint": Checks for any code errors.

"unit-tests": Executes unit tests.

"integration-tests": Executes integration tests.

"check": Performs a check operation. The specific nature of the check is not defined.

"validate": Validates HTML files.

"post": Creates '.md' files inside 'content/posts' with the required attributes. Attributes: $POST_NAME, $POST_TITLE.