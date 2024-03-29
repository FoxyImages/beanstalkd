NAME = sunfoxcz/beanstalkd

all: build

build:
	docker build -t $(NAME):latest --rm .

release:
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F latest; then echo "$(NAME) is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME):latest
