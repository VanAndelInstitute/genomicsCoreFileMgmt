#!/bin/bash
cd  /varidata/research/instruments/sequencing/geomx/post_run_files
mkdir -p ../.trash/post_run_files
find *_* -maxdepth 0 -mtime +60 -type d -exec mv {} ../.trash/post_run_files \; 


cd  /varidata/research/instruments/sequencing/geomx/config_files
mkdir -p ../.trash/config_files
find *_* -maxdepth 0 -mtime +60 -type d -exec mv {} ../.trash/config_files \; 


cd  /varidata/research/instruments/sequencing/geomx/DCC_output
mkdir -p ../.trash/DCC_output
find *_* -maxdepth 0 -mtime +60 -type d -exec mv {} ../.trash/DCC_output \; 

chown -R marie.adams ../.trash
