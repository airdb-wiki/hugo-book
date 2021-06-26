PROJECT="/tmp/demo"

test = $(shell if [ -d /tmp/demo ]; then echo "exist"; else echo "noexist"; fi)

run:
	cd exampleSite && hugo server --themesDir ../..

create:
	cp -pr exampleSite $(PROJECT)
