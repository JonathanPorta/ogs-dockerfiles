# Ark: Survival Evolved Server Dockerfile
FROM jonathanporta/steamcmd

# Install Ark server files
RUN ./steamcmd.sh +login anonymous \
  +force_install_dir /srv \
  +app_update 376030 validate \
  +quit

# Set the server executable as the entrypoint
ENTRYPOINT ["/srv/ShooterGame/Binaries/Linux/ShooterGameServer"]
