.PHONY: test

all: mod run

run:
	hugo server --minify --theme book

# Suggest bind 0.0.0.0 for wls network.
wls win windows:
	hugo server --bind=0.0.0.0 --port=1313 --minify --theme book 

mod:
	git init -b main
	git submodule add --force  https://github.com/airdb-wiki/hugo-book  themes/book
	git submodule update --init
	git submodule update --remote

	git add .
	git commit -m "init project" | true

build:
	hugo -D --minify
	
install:
	git submodule update --init
	git submodule update --remote
	hugo -D --minify
