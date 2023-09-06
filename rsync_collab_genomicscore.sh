#!/bin/bash
cd /varidata/researchtemp/collab/Genomics_Core
mkdir -p .trash
find */* -maxdepth 0 -mtime +60 -type d -exec bash -c 'mkdir .trash/$(dirname {}); mv {} .trash/$(dirname {})' \; 
chown -R marie.adams .trash
