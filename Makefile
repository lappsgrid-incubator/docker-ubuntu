DOCKER=/usr/local/bin/docker
IMAGE=lappsgrid/ubuntu

ubuntu:
	$(DOCKER) build -t $(IMAGE) .

lsd:
	$(DOCKER) build -f Dockerfile.lsd -t $(IMAGE):lsd

tag:
	if [ -n "$(TAG)" ] ; then $(DOCKER) tag $(IMAGE) $(IMAGE):$(TAG) ; fi
	
push:
	$(DOCKER) push $(IMAGE)
	
help:
	@echo "GOALS"
	@echo "  ubuntu (default)"
	@echo "    A basic Ubuntu image with PostgreSQL included."
	@echo "  lsd"
	@echo "    A Ubuntu image with the LSD interpreter included."
	@echo "  tag TAG=<tagname>"
	@echo "    Tags $(IMAGE) on hub.docker.com. The tag name must"
	@echo "    be specified on the command line."
	@echo "  help"
	@echo "    This helpful message."

