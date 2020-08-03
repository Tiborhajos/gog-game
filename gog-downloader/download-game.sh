#!/bin/bash

if [ -f /data/$GAME/$GAME*.sh ]
then
    echo "File found on system. Using existing file."
else
    echo "File not found on system. Downloading file."
    mkdir -p /data/$GAME/ # -p because it might be a new version of the game.
    mv $(lgogdownloader --download-file $GAME/$GOG_INSTALLER_ID) /data/$GAME
fi
