#!/bin/bash
echo "****test jar ***"
WORKSPACE=/home/ubuntu/jenkins/jenkins_home/workspace/pipeline-docker-maven
docker run --rm -i -t=false -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
