#!/usr/bin/env bash

eval $(docker-machine env blackbox)

docker-compose -f docker-compose.yml up --build -d

