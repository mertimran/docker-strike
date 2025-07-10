#!/bin/bash

cp -r /mnt/$GAME/. /home/steam/hlds/$GAME/

echo "Starting Server..."
echo "Game: $GAME"
echo "Arguments: $@"

# Run the original server command
exec ./hlds_run "$@"