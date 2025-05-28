#!/bin/bash
cd /varidata/research/instruments/sequencing/MiSeq/runs/
mkdir -p .trash
find 20* -maxdepth 0 -mtime +60 -type d -exec mv {} .trash \; 
chown -R marie.adams:sequencing-technology .trash
