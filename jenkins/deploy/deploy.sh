echo "maven-project" > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth    

scp -i /opt/prod /tmp/.auth prod-user@master:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh prod-user@master:~/maven/
ssh -i /opt/prod prod-user@master "~/maven/publish.sh"
