.PHONY = help build serve push
INTERFACE = 172.28.221.222

help:
	@echo "Targets:"
	@echo "    serve"
	@echo "    build"
	@echo "    push"

build:
	hugo

serve:
	hugo serve -D --watch --bind=0.0.0.0 --baseURL=http://$(INTERFACE) --port=8000

push: build
	rsync -vaz public/ nick:/var/www/mikeneedsakidney
