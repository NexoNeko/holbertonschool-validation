# Website Build Guide

This repository contains the source code for a website built with Hugo, a static site generator written in Go. This guide provides instructions on how to build and run the website locally.

## Prerequisites

To build the website, you will need the following software installed on your machine:

- Go
- Hugo
- Make

## Building the Website

To build the website, simply run the following command in your terminal:

`make build`

This will build the website using Hugo and output the static files to the `dist/` directory.

## Cleaning the Build

To clean the build, simply run the following command in your terminal:

`make clean`

This will remove all files from the `dist/` directory.

## Creating a New Post

To create a new post, run the following command in your terminal:

`make post POST_NAME=<name-of-your-post> POST_TITLE="<title-of-your-post>"`

This will create a new Markdown file in the `content/posts/` directory, with the given name and title.

## Lifecycle

The website build has the following lifecycle:

1. Write or edit content in the `content/` directory using Markdown format.
2. Run `make build` to generate the static website in the `dist/` directory.
3. Preview the website by opening `dist/index.html` in a web browser.
4. Deploy the website by uploading the contents of the `dist/` directory to a web server or hosting service.


## Makefile Targets

The following is a list of available Makefile targets:

- `build`: Builds the website
- `clean`: Cleans the build
- `post`: Creates a new post

Each target has a comment in the Makefile describing what it does.
