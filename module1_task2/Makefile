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

# Displays help for available targets
help:
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets:"
	@echo ""
	@echo "	 build		   Builds the website using Hugo"
	@echo "	 clean		   Cleans the build by removing all files from the dist/ directory"
	@echo "	 post		   Creates a new post with the given name and title"
	@echo "	 help		   Displays help for available targets"

help build:
	@echo "Usage: make build"
	@echo ""
	@echo "Builds the website using Hugo"
	@echo ""

help clean:
	@echo "Usage: make clean"
	@echo ""
	@echo "Cleans the build by removing all files from the dist/ directory"
	@echo ""

help post:
	@echo "Usage: make post"
	@echo ""
	@echo "Creates a new post with the given name and title"
	@echo ""