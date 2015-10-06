DOCKER=/usr/local/bin/docker

ubuntu:
	$(DOCKER) build -t lappsgrid/ubuntu .

lsd:
	$(DOCKER) build -f Dockerfile.lsd -t lappsgrid/ubuntu:lsd

help:
	@echo "GOALS"
	@echo "  ubuntu (default)"
	@echo "    A basic Ubuntu image with PostgreSQL included."
	@echo "  lsd"
	@echo "    A Ubuntu image with the LSD interpreter included."
	@echo "  help"
	@echo "    This helpful message."

