# Rust Server Dockerfile
FROM quay.io/jonathanporta/steamcmd

# Install Hurtworld server files
RUN ./steamcmd.sh +login anonymous \
  +force_install_dir /srv \
  +app_update 258550 validate \
  +quit

# Copy over the init script for wrapping the executable
COPY init.sh /srv/
RUN chmod 755 /srv/init.sh

# Make sure we are in the correct directory
WORKDIR /srv/

# Opens host and query ports
EXPOSE 28015/udp
EXPOSE 28016/udp

# Set the server executable as the entrypoint
ENTRYPOINT ["./init.sh"]
