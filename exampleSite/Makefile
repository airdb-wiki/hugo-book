.PHONY: test

all: run

run:
	hugo server --minify --theme book
mod:
	git submodule update --init
	git submodule update --remote

wls win windows:
	hugo server --bind=0.0.0.0 --port=1313 --minify --theme book 

build:
	hugo -D --minify
	
install:
	git submodule update --init
	git submodule update --remote
	hugo -D --minify
