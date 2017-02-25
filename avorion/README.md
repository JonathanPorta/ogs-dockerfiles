# Avorion Dedicated Server Dockerfile [![Docker Repository on Quay](https://quay.io/repository/jonathanporta/ogs-avorion/status "Docker Repository on Quay")](https://quay.io/repository/jonathanporta/ogs-avorion)
Builds a Docker container with the dedicated server files already installed.

# Build
`make build`

# Usage
If you're in a hurry you may use `make run`. Otherwise, you probably want to specify some options:
```
		docker run\
			--net="host"\
			-v $(pwd)/data:/root/.avorion/galaxies
			-p 27000:27000/udp\
			-p 27003:27003/udp\
			-p 27020:27020/udp\
			-p 27021:27021/udp\
			-p 27000:27000/tcp\
			-p 27003:27003/tcp\
			-p 27020:27020/tcp\
			-p 27021:27021/tcp\
			-it $(REPO)/$(IMAGE) -exec ""
```

NOTE: Using `--net="host"` is not considered secure as the container will now have access to anything listening on the host. Use it only if you know what you are doing. Read more [here](https://docs.docker.com/engine/reference/run/#network-settings).
