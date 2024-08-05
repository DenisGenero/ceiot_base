#!/bin/bash

cd ~/ceiot_base
docker run  -p 27017:27017 mongo:4.0.4 &

cd ~/ceiot_base/api
node index.js &

cd ~/ceiot_base/api/spa
./rebuild.sh

exit
