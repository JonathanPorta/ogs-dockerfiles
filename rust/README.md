# Rust Dedicated Server Dockerfile [![Docker Repository on Quay](https://quay.io/repository/jonathanporta/ogs-rust/status "Docker Repository on Quay")](https://quay.io/repository/jonathanporta/ogs-rust)
Builds a Docker container with the dedicated server files already installed.

# Build
`make build`

# Usage
If you're in a hurry you may use `make run`. Otherwise, you probably want to specify some options:
```
	docker run\
		--net="host"\
		-v $(pwd)/logs:/logs/\
		-p 12871:28015/udp\
		-p 12881:28016/udp\
		-it jonathanporta/ogs-rust -exec "+server.port 28015 +server.tickrate 30"
```

NOTE: Using `--net="host"` is not considered secure as the container will now have access to anything listening on the host. Use it only if you know what you are doing. Read more [here](https://docs.docker.com/engine/reference/run/#network-settings).
