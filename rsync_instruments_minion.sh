#!/bin/bash
cd  /varidata/research/instruments/sequencing/minion/
mkdir -p .trash
find PR* -maxdepth 0 -mtime +60 -type d -exec mv {} .trash \; 
chown -R marie.adams:sequencing-technology .trash
