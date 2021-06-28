.PHONY: docker push clean

DOCKER_REPOSITORY := hichtakk/pptx-calendar-generator
IMAGE_VERSION := $(lastword $(shell grep 'VERSION =' main.py))


docker:
	@docker build -t $(DOCKER_REPOSITORY):$(IMAGE_VERSION) .

push:
	@docker push $(DOCKER_REPOSITORY):$(IMAGE_VERSION)

clean:
	@rm ./*.pptx
	@docker images | grep pptx-calendar-generator | awk '{print $3}' | xargs docker rmi
