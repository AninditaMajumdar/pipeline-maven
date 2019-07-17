#!/bin/bash
echo "***pushing image***"
IMAGE="maven-project"
docker login -u dodev123 -p $PASS
docker tag $IMAGE:$BUILD_TAG dodev123/$IMAGE:$BUILD_TAG
docker push dodev123/$IMAGE:$BUILD_TAG
