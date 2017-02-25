#!/bin/bash
set -e

# Specify defaults that are overrideable via ENV vars
SERVER_PORT=${SERVER_PORT-28015}
RCON_PORT=${RCON_PORT-28016}
RCON_PASSWORD=${RCON_PASSWORD-"rcon password here"}
SERVER_MAXPLAYERS=${SERVER_MAXPLAYERS-75}
SERVER_NAME=${SERVER_NAME-"Server Name"}
SERVER_IDENTITY=${SERVER_IDENTITY-"my_server_identity"}
SERVER_LEVEL=${SERVER_LEVEL-"Procedural Map"}
SERVER_SEED=${SERVER_SEED-123456}
SERVER_WORLDSIZE=${SERVER_WORLDSIZE-4000}
SERVER_SAVEINTERVAL=${SERVER_SAVEINTERVAL-300}
SERVER_GLOBALCHAT=${SERVER_GLOBALCHAT-true}
SERVER_DESCRIPTION=${SERVER_DESCRIPTION-"Server description here"}
SERVER_HEADERIMAGE=${SERVER_HEADERIMAGE-"512x256px JPG/PNG headerimage link here"}
SERVER_URL=${SERVER_URL-"https://my-servers-website"}

# Wrap the executable
exec ./RustDedicated -batchmode -nographics \
  -server.port $SERVER_PORT \
  -rcon.port $RCON_PORT \
  -rcon.password "$RCON_PASSWORD" \
  -server.maxplayers $SERVER_MAXPLAYERS \
  -server.hostname "$SERVER_NAME" \
  -server.identity "$SERVER_IDENTITY" \
  -server.level "$SERVER_LEVEL" \
  -server.seed $SERVER_SEED \
  -server.worldsize $SERVER_WORLDSIZE \
  -server.saveinterval $SERVER_SAVEINTERVAL \
  -server.globalchat $SERVER_GLOBALCHAT \
  -server.description "$SERVER_DESCRIPTION" \
  -server.headerimage "$SERVER_HEADERIMAGE" \
  -server.url "$SERVER_URL" \
  "$@" # pass along the rest of the command used to exec to container.
