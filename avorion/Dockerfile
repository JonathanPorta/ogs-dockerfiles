# Avorion Server Dockerfile
FROM quay.io/jonathanporta/steamcmd

# Install Avorion server files
RUN ./steamcmd.sh +login anonymous \
  +force_install_dir /srv \
  +app_update 565060 validate \
  +quit

# Copy over the init script for wrapping the executable
COPY init.sh /srv/
RUN chmod 755 /srv/init.sh

# Make sure we are in the correct directory
WORKDIR /srv/

# Opens host and query ports
EXPOSE 27000/udp
EXPOSE 27003/udp
EXPOSE 27020/udp
EXPOSE 27021/udp

# The UDP+TCP Dockerfile syntax doesn't seem to work.
EXPOSE 27000/tcp
EXPOSE 27003/tcp
EXPOSE 27020/tcp
EXPOSE 27021/tcp

# Set the server executable as the entrypoint
ENTRYPOINT ["./init.sh"]
