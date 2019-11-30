#!/bin/bash

echo "**************************************"
echo "**** pushing image to docker hub *****"
echo "**************************************"

IMAGE="maven-project"

echo "*(****logging in ****)*"

docker login -u shonphand -p $PASS

echo "**** tagging image *******"

docker tag $IMAGE:$BUILD_TAG shonphand/$IMAGE:$BUILD_TAG

echo "***** Pushing image ******"

docker push shonphand/$IMAGE:$BUILD_TAG

