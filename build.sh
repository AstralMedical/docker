#!/bin/sh
rm -rf data
mkdir data
cp -a ~/git/chai-client/static nginx
cp -a ~/git/chai-client/static/assets/json/cards data/
cp ~/.m2/repository/uk/co/elidirhealth/chai/chai/1.0-SNAPSHOT/chai-1.0-SNAPSHOT.jar data
cp ~/git/chai-storage/chai/target/classes/config.yml  data
cp -a ~/git/printing print
