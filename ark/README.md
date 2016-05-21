# Ark: Survival Evolved Dedicated Server Dockerfile [![Docker Repository on Quay](https://quay.io/repository/jonathanporta/ogs-ark/status "Docker Repository on Quay")](https://quay.io/repository/jonathanporta/ogs-ark)
Builds a Docker container with the dedicated server files already installed.

# Build
`docker build -t jonathanporta/ogs-ark .`

# Usage
```
docker run\
	--net="host"\
	-p 27015:27015/udp\
	-p 7777:7777/udp\
	-p 32330:32330/tcp\
	-it $(REPO)/$(IMAGE) -exec 'TheIsland?listen?SessionName="My Ark Server"?ServerAdminPassword="admin password here" -server -log'
```
