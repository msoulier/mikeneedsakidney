.PHONY = help build serve push

BIND=127.0.0.1:8000

help:
	@echo "Targets:"
	@echo "    serve"
	@echo "    build"
	@echo "    push"

build:
	hugo

serve:
	hugo serve -D --watch --bind=$(BIND)

push: build
	rsync -vaz public/ nick:/var/www/mikeneedsakidney
