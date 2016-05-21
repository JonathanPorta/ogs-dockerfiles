# Ark: Survival Evolved Server Dockerfile
FROM quay.io/jonathanporta/steamcmd

# Install Ark server files
RUN ./steamcmd.sh +login anonymous \
  +force_install_dir /srv \
  +app_update 376030 validate \
  +quit

# Copy over the init script for wrapping the executable
COPY init.sh /srv/
RUN chmod 755 /srv/init.sh

# Make sure we are in the correct directory
WORKDIR /srv/

# Opens host rcon and query ports
EXPOSE 27015/udp
EXPOSE 7777/udp
EXPOSE 32330/tcp

# Set the server executable as the entrypoint
ENTRYPOINT ["./init.sh"]
