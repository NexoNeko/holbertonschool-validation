build:	## Builds the website using Hugo
	@hugo

clean:	## Cleans the build by removing all files from the dist/ directory
	@rm -rf dist/*

post:	## Creates a new post with the given name and title
	@hugo new posts/$(POST_NAME).md
	@echo "---\n\
	title: \"$(POST_TITLE)\"\n\
	date: $$(date +'%Y-%m-%dT%H:%M:%S%z')\n\
	draft: false\n\
	---" > content/posts/$(POST_NAME).md

help:	## Show this help usage
	@awk -F':.*##' '/^[^#[:space:]].*?:.*?##/ { printf "%-20s %s\n", $$1, $$2 }' $(MAKEFILE_LIST)
