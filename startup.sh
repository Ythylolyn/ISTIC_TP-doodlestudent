#!/bin/bash

cd api && docker-compose up -d
cd ../front && docker-compose up -d
