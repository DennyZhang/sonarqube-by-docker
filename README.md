# sonarqube-by-docker
Setup snoarqube code check for java projects using docker

# How To Use

- With docker container: TODO

```
# Destroy container, if existing
docker stop sonarqube; docker rm sonarqube

# Prepare java sonarqube project file
vim java-project.properties

source_dir="/opt/denny/source_code/project1" # TODO: customize this
# Start container. Here we use -v to mount source code
docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 \
        -v $source_dir:/opt/sonarqube/mycode \
        denny/sonarqube-by-docker:latest

# TODO: mount file
docker cp java-project.properties sonarqube:/opt/sonarqube/mycode/java-project.properties

# Run scan command. This would take 1 minutes.
# The stdout will show your report link, like below
# Sample: INFO: ANALYSIS SUCCESSFUL, you can browse http://localhost:9000/dashboard/index/test:myproject
docker exec -it sonarqube sh

cd /opt/sonarqube/mycode
# sonar-runner

# Destroy it, if you don't need it
docker stop sonarqube  && docker rm sonarqube
```

- With docker-compose: TODO
