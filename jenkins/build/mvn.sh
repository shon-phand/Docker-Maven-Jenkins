#!//bin/bash 

echo "******************"
echo "** building jar **"
echo "******************"
WORKSPACE=/home/shon/Documents/Jenkins/jenkins-home/workspace/jenkins-pipeline
docker run --rm  -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
