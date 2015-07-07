#!/bin/bash

IMAGE=$1

echo "Pulling image $IMAGE from central registry"
docker pull $IMAGE

REPO_AND_VERSION=$(echo $IMAGE | cut -d"/" -f2)
NEW_NAME="localhost:5000/$REPO_AND_VERSION"

echo "Tagging with new local name $NEW_NAME"

docker tag -f $IMAGE $NEW_NAME

echo "Pushing image $NEW_IMAGE to internal registry (docker.adeo.no:5000)"
docker push $NEW_NAME && echo "Done! Image should now be pullable with docker.adeo.no:5000/$REPO_AND_VERSION"

