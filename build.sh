#!/bin/sh
rm -rf data
rm -rf print/printing
rm -rf ngginx/static/*


mkdir -p data/cards
cp -a ~/git/chai-client/static nginx
cp -a ~/git/cards/static/* data/cards
cp -a ~/git/cards/repeating/* data/cards
cp -a ~/git/cards/careplans/* data/cards
cp ~/.m2/repository/uk/co/elidirhealth/chai/chai/1.0-SNAPSHOT/chai-1.0-SNAPSHOT.jar data
cp ~/git/chai-storage/chai/target/classes/config.yml  data
cp -a ~/git/printing print
