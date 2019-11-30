#!/bin/bash

# copying new jar to build location

cp ./java-app/target/*.jar ./jenkins/build/
 
echo "*************************"
echo "** buiding the docker ***"
echo "*************************"

cd ./jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache