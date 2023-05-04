HUGO = hugo
POST_TITLE ?= "New Blog Post"
POST_NAME ?= "new-blog-post"

.PHONY: build clean post

build:
	$(HUGO) -t ananke -d dist/

clean:
	rm -rf dist/*

post:
	hugo new blog/$(POST_NAME).md
	sed -i 's/title:.*$$/title: $(POST_TITLE)/' content/blog/$(POST_NAME).md
