REPOSITORY = kalelc/puma
NAME = puma
ENVIRONMENT = production

build:
	docker build --build-arg ENVIRONMENT=$(ENVIRONMENT) -t $(NAME) web/.
tag:
	docker tag $(NAME) $(REPOSITORY)
push: tag
	docker push $(REPOSITORY)
