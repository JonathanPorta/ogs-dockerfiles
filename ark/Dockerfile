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
EXPOSE 27015/tcp \
  27015/udp \
  7777/tcp \
  7777/udp \
  7778/tcp \
  7778/udp \
  32330/tcp \
  32330/udp

# Set the server executable as the entrypoint
ENTRYPOINT ["./init.sh"]
