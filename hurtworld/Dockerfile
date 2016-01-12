# Hurtworld Server Dockerfile
FROM quay.io/jonathanporta/steamcmd

# Install Hurtworld server files
RUN ./steamcmd.sh +login anonymous \
  +force_install_dir /srv \
  +app_update 405100 validate \
  +quit

# Copy over the init script for wrapping the executable
COPY init.sh /srv/
RUN chmod 755 /srv/init.sh

# Make sure we are in the correct directory
WORKDIR /srv/

# Opens host and query ports
EXPOSE 12871/udp
EXPOSE 12881/udp

# Set the server executable as the entrypoint
ENTRYPOINT ["./init.sh"]
