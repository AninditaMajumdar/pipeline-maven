#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
 scp -i /opt/prod /tmp/.auth anindita@34.242.80.140:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh anindita@34.242.80.140:/tmp/publish.sh
ssh -i /opt/prod anindita@34.242.80.140 "/tmp/publish.sh"
