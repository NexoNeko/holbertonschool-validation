# Simple HTTP web server written in the Golang language.


# Prerequisites

This project needs the following tools / services:

Same tools as previous module Golang in v1.15.* NPM v7+ with NodeJS v14.* (stable) Python 3 with pip module golangci-lint


# Lifecycle
“build”: compile the source code of the application to a binary named awesome-api (the name awesome-api comes from the command go mod init github.com/<your github handle>/awesome-api) with the command go build. The first build may takes some times.

“run”: Run the application in background by executing the binary awesome-api, and write logs into a file named awesome-api.log with the command ./awesome-api >./awesome-api.log 2>&1 &.

“stop”: Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application. For instance: kill "$(pgrep awesome-api)".

“clean”: Stop the application. Delete the binary awesome-api and the log file awesome-api.log

“test”: You want to test it to ensure that it behaves as expected. With the application started, you may want to use the command line curl (or your web browser, or the command wget or any other HTTP client)

"lint:" Check code for errors before building

"help:" Displays the help message

"unit-tests:" Run UnitTests

---
