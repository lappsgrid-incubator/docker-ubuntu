DOCKER=/usr/local/bin/docker
IMAGE=lappsgrid/ubuntu
POSTGRES=$(IMAGE):postgres

ubuntu:
	$(DOCKER) build -t $(IMAGE) .

postgres:
	$(DOCKER) build -f Dockerfile.postgres -t $(POSTGRES) .

lsd:
	$(DOCKER) build -f Dockerfile.lsd -t $(IMAGE):lsd

push:
	$(DOCKER) push $(IMAGE)

push-postgres:
	$(DOCKER) push $(IMAGE):postgres
	
help:
	@echo "GOALS"
	@echo "  ubuntu (default)"
	@echo "    A basic Ubuntu image."
	@echo "  postgres"
	@echo "    The basic Ubuntu image with PostgreSQL included."
	@echo "  lsd"
	@echo "    A Ubuntu image with the LSD interpreter included."
	@echo "  push"
	@echo "    Pushes the basic Ubuntu image to hub.docker.com"
	@echo "  push-postgres"
	@echo "    Pushes the Postgres image to hub.docker.com"
	@echo "  help"
	@echo "    This helpful message."


