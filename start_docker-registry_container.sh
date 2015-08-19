#!/bin/bash

docker run -d -p 5000:5000 -v /var/docker-registry:/var/docker-registry --restart="always" secure_registry:2.1.1
