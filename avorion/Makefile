REPO = "quay.io/jonathanporta"
IMAGE = "ogs-avorion"
PERSIST_DIR = $(shell pwd)/persist

all: build run

build:
	docker build -t $(REPO)/$(IMAGE) .

# --net="host" is not great, but the virtual networking is not performant.
run:
	mkdir -p $(PERSIST_DIR)
	docker run\
		--net="host"\
		-v $(PERSIST_DIR):/root/.avorion/galaxies\
		-p 27000:27000/udp\
		-p 27003:27003/udp\
		-p 27020:27020/udp\
		-p 27021:27021/udp\
		-p 27000:27000/tcp\
		-p 27003:27003/tcp\
		-p 27020:27020/tcp\
		-p 27021:27021/tcp\
		-it $(REPO)/$(IMAGE) -exec ""

push:
	docker push $(REPO)/$(IMAGE):latest
