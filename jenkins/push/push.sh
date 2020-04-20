#!/bin/bash

echo "*******************"
echo "***Pushing image***"
echo "*******************"

IMAGE="maven-project"

echo "***Loggin in ******"
docker login -u neharastogi -p $PASS
echo "****Tagging image**"
docker tag $IMAGE:$BUILD_TAG neharastogi/$IMAGE:$BUILD_TAG
echo "*** pushing image*****"
docker push neharastogi/$IMAGE:$BUILD_TAG
