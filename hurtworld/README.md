# Ark: Survival Evolved Dedicated Server Dockerfile
Builds a Docker container with the dedicated server files already installed.

# Build
`docker build -t jonathanporta/ogs-hurtworld . && docker run -v $(pwd)/logs:/logs/ -p 12871 -p 12881 -it jonathanporta/ogs-hurtworld -exec "host 12871;queryport 12881;servername My New Server;addadmin <My Steam ID>" -logfile "/logs/gamelog.txt"`

# Usage
