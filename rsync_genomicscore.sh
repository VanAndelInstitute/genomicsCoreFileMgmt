#!/bin/bash
cd /varidata/research/projects/genomicscore/primary
mkdir -p .trash
find *Lab -mtime +14 -type f > /root/.genomicsMovedfiles
rsync -arvxlA --remove-source-files --files-from=/root/.genomicsMovedfiles ./ .trash
find *Lab/* -depth -type d -empty -delete -mtime +14
chown -R marie.adams:sequencing-technology .trash
chmod -R 777 .trash
