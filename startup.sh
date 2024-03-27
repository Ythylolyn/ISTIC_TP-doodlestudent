#!/bin/bash
BUILD_DIR=`pwd`

#build API et FRONT :
cd $BUILD_DIR/api && docker build . -t doodlestudent-api
cd $BUILD_DIR/front && docker build . -t doodlestudent-front

#run les docker_compose :
cd $BUILD_DIR/api && docker-compose up -d
cd $BUILD_DIR/front && docker-compose up -d
