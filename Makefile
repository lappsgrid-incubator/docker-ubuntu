IMAGE=lappsgrid/ubuntu

ubuntu:
	docker build -t $(IMAGE) .

lsd:
	docker build -f Dockerfile.lsd -t $(IMAGE):lsd

tag:
	if [ -n "$(TAG)" ] ; then docker tag $(IMAGE) $(IMAGE):$(TAG) ; docker push $(IMAGE):$(TAG) ; fi
	
push:
	docker push $(IMAGE)
	
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

