# Hurtworld Dedicated Server Dockerfile[![Docker Repository on Quay](https://quay.io/repository/jonathanporta/ogs-hurtworld/status "Docker Repository on Quay")](https://quay.io/repository/jonathanporta/ogs-hurtworld)
Builds a Docker container with the dedicated server files already installed.

# Build
`make build`

# Usage
If you're in a hurry you may use `make run`. Otherwise, you probably want to specify some options:
```
	docker run\
		--net="host"\
		-v $(pwd)/logs:/logs/\
		-p 12871:12871/udp\
		-p 12881:12881/udp\
		-it jonathanporta/ogs-hurtworld -exec "host 12871;queryport 12881;servername [ogs] HurtCoast|Wiped 1/3|" -logfile "/logs/gamelog.txt"
```

NOTE: Using `--net="host"` is not considered secure as the container will now have access to anything listening on the host. Use it only if you know what you are doing. Read more [here](https://docs.docker.com/engine/reference/run/#network-settings).
