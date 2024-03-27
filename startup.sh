#!/bin/bash
#build API et FRONT :
cd api && docker build . -t doodlestudent-api
cd ..
cd front && docker build . -t doodlestudent-front
cd ..

#run les docker_compose :
cd api && docker-compose up -d
cd ../front && docker-compose up -d
