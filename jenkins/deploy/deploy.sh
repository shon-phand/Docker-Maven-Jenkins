echo "maven-project" > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth    

scp -i /opt/prod /tmp/.auth prod-user@192.168.33.10:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh prod-user@192.168.33.10:~/maven/
ssh -i /opt/prod prod-user@192.168.33.10 "~/maven/publish.sh"
