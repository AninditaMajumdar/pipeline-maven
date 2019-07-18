#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
scp -i ~/.ssh/id_rsa /tmp/.auth anindita@34.242.80.140:/tmp/.auth
scp -i ~/.ssh/id_rsa ./jenkins/deploy/publish.sh anindita@34.242.80.140:/tmp/publish.sh
ssh -i ~/.ssh/id_rsa anindita@34.242.80.140 "/tmp/publish.sh"


