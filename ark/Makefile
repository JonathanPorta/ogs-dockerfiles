REPO = "quay.io/jonathanporta"
IMAGE = "ogs-ark"
PERSIST_DIR = $(shell pwd)/persist
all: build run

build:
	docker build -t $(REPO)/$(IMAGE) .

# --net="host" is not great, but the virtual networking is not performant.
run:
	docker run\
		--net="host"\
		-v $(PERSIST_DIR):/srv/ShooterGame/Saved/\
		-p 27015:27015\
		-p 7777:7777\
		-p 7778:7778\
		-p 32330:32330\
		-it $(REPO)/$(IMAGE) 'TheCenter?listen?SessionName=My Ark Server?ServerAdminPassword=admin password here?QueryPort=27015 -server'

connect:
	docker run\
		--net="host"\
		-v $(PERSIST_DIR):/srv/ShooterGame/Saved/\
		-p 27015:27015\
		-p 7777:7777\
		-p 7778:7778\
		-p 32330:32330\
		-it --entrypoint=/bin/bash $(REPO)/$(IMAGE)

push:
	docker push $(REPO)/$(IMAGE):latest
