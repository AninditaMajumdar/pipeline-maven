#!/bin/bash
echo "****build jar ***"
WORKSPACE=/home/ubuntu/jenkins/jenkins_home/workspace/pipeline-docker-maven
docker run --rm -it -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
