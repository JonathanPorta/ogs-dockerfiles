REPO = "quay.io/jonathanporta"
IMAGE = "ogs-rust"

all: build run

build:
	docker build -t $(REPO)/$(IMAGE) .

# --net="host" is not great, but the virtual networking is not performant.
run:
	docker run\
		--net="host"\
		-v $(pwd)/logs:/logs/\
		-p 28015:28015/udp\
		-p 28016:28016/udp\
		-it $(REPO)/$(IMAGE) -exec "+server.port 28015 +server.tickrate 30"

push:
	docker push $(REPO)/$(IMAGE):latest
