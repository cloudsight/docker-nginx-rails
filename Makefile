VERSION=latest
NAME=docker-nginx-rails
REPOSITORY=cloudsight

.PHONY: all build tag release

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm .

tag: build
	docker tag $(NAME):$(VERSION) $(REPOSITORY)/$(NAME):$(VERSION)

release: tag
	docker push $(REPOSITORY)/$(NAME):$(VERSION)

run:
	docker run --rm -it $(NAME):$(VERSION)
