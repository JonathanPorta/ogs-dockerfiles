# Ark: Survival Evolved Dedicated Server Dockerfile
Builds a Docker container with the dedicated server files already installed.

# Build
`docker build -t jonathanporta/ogs-ark .`

# Usage
`docker run -it jonathanporta/ogs-ark TheIsland?listen?SessionName=<server_name>?ServerPassword=<join_password>?ServerAdminPassword=<admin_password> -server -log`
