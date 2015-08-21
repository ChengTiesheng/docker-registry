#!/bin/bash

docker run -d -p 5000:5000 -v /var/docker-registry:/var/docker-registry --restart="always" <MY_IMAGE_NAME>:<MY_VERSION>
