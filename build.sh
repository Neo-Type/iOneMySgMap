#!/usr/bin/env bash
set -xeuo pipefail

cd openmaptiles
mkdir -p data

echo "====> : Downloading Singapore Metro Extract"
curl https://s3.amazonaws.com/metro-extracts.mapzen.com/singapore.osm.pbf -o data/singapore.osm.pbf

./quickstart.sh singapore
