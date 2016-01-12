REPO = "quay.io/jonathanporta"
IMAGE = "ogs-hurtworld"

all: build run

build:
	docker build -t $(REPO)/$(IMAGE) .

# --net="host" is not great, but the virtual networking is not performant.
run:
	docker run\
		--net="host"\
		-v $(pwd)/logs:/logs/\
		-p 12871:12871/udp\
		-p 12881:12881/udp\
		-it $(REPO)/$(IMAGE) -exec "host 12871;queryport 12881;servername [ogs] Hurtworld" -logfile "/logs/gamelog.txt"

push:
	docker push $(REPO)/$(IMAGE):latest
