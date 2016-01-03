# Hurtworld Server Dockerfile
FROM jonathanporta/steamcmd

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

# Symlink the steam libs - the binary seems to be unable to find them otherwise
#RUN ln -s /opt/steamcmd/linux32/steamclient.so ./Hurtworld_Data/Plugins/x86/steamclient.so
#RUN ln -s /opt/steamcmd/linux64/steamclient.so ./Hurtworld_Data/Plugins/x86_64/steamclient.so

# Opens host and query ports
EXPOSE 12871
EXPOSE 12881

# Set the server executable as the entrypoint
ENTRYPOINT ["./init.sh"]
