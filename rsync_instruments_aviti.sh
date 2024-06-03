#!/bin/bash
if [[ ! -d /varidata/research/instruments/sequencing/Aviti/AV234602 ]] ; then
	echo 'Aviti dir is not there, aborting.'
	exit
fi

cd  /varidata/research/instruments/sequencing/Aviti/AV234602

mkdir -p .trash
find 2* -maxdepth 0 -mtime +60 -type d -exec mv {} .trash \; 
chown -R marie.adams:sequencing-technology .trash
chmod -R 777 .trash
