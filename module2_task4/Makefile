build: check	## Builds the website using Hugo
	@hugo

clean:	## Cleans the build by removing all files from the dist/ directory
	@rm -rf dist/

post:	## Creates a new post with the given name and title
	@hugo new posts/$(POST_NAME).md
	@echo "---\n\
	title: \"$(POST_TITLE)\"\n\
	date: $$(date +'%Y-%m-%dT%H:%M:%S%z')\n\
	draft: true\n\
	---" > content/posts/$(POST_NAME).md

check:	## Check for dead links and markdown syntax
	@markdownlint content/posts/*.md
	@markdown-link-check content/posts/*.md

validate:	## Validate html
	@W3C-Validator/w3c_validator.py dist/index.html || true

help:	## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
