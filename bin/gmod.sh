#!/bin/bash

# Download Gmod Server
./steamcmd.sh +runscript arena/steamcmd_scripts/install_gmod.txt

# Run Gmod Server
./gmod/srcds_run -console -game garrysmod +map gm_construct +maxplayers 4

