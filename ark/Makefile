REPO = "quay.io/jonathanporta"
IMAGE = "ogs-ark"

all: build run

build:
	docker build -t $(REPO)/$(IMAGE) .

# --net="host" is not great, but the virtual networking is not performant.
run:
	docker run\
		--net="host"\
		-p 27015:27015/udp\
		-p 7777:7777/udp\
		-p 32330:32330/tcp\
		-it $(REPO)/$(IMAGE) -exec 'TheIsland?listen?SessionName="My Ark Server"?ServerAdminPassword="admin password here" -server -log'

push:
	docker push $(REPO)/$(IMAGE):latest
