## Builds the website using Hugo
build:
	@hugo

clean:	## Cleans the build by removing all files from the dist/ directory
	@rm -rf dist/*
	
## Creates a new post with the given name and title
post:	
	@hugo new posts/$(POST_NAME).md
	@echo "---\n\
	title: \"$(POST_TITLE)\"\n\
	date: $$(date +'%Y-%m-%dT%H:%M:%S%z')\n\
	draft: false\n\
	---" > content/posts/$(POST_NAME).md
	
## Show this help usage
help:
	@awk '/^[a-zA-Z0-9_-]+:.*?##/ { printf "%-20s %s\n", $$1, $$NF }' $(MAKEFILE_LIST)
