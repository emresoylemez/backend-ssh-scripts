docker stop $(docker ps -a -q --filter ancestor=tomcat-local-:0.0.1 --format="{{.ID}}")
docker stop $(docker ps -a -q --filter ancestor=oracle/db:0.0.1 --format="{{.ID}}")
echo "Tomcat and Oracle images stopped."
