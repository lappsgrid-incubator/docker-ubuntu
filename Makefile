DOCKER=/usr/local/bin/docker
IMAGE=lappsgrid/ubuntu

ubuntu:
	$(DOCKER) build -t $(IMAGE) .

lsd:
	$(DOCKER) build -f Dockerfile.lsd -t $(IMAGE):lsd

push:
	$(DOCKER) push $(IMAGE)
	
help:
	@echo "GOALS"
	@echo "  ubuntu (default)"
	@echo "    A basic Ubuntu image with PostgreSQL included."
	@echo "  lsd"
	@echo "    A Ubuntu image with the LSD interpreter included."
	@echo "  help"
	@echo "    This helpful message."

