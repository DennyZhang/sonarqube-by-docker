[![Docker](https://www.dennyzhang.com/wp-content/uploads/sns/docker.png)](https://hub.docker.com/r/denny/sonarqube-by-docker) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

[![LinkedIn](https://www.dennyzhang.com/wp-content/uploads/sns/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://www.dennyzhang.com/wp-content/uploads/sns/github.png)](https://github.com/DennyZhang) [![Twitter](https://www.dennyzhang.com/wp-content/uploads/sns/twitter.png)](https://twitter.com/dennyzhang001) [![Slack](https://www.dennyzhang.com/wp-content/uploads/sns/slack.png)](https://www.dennyzhang.com/slack)
<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://www.dennyzhang.com/wp-content/uploads/denny/watermark/github.png" /></a>

- File me [tickets](https://github.com/DennyZhang/sonarqube-by-docker/issues) or star [the repo](https://github.com/DennyZhang/sonarqube-by-docker)

# sonarqube-by-docker
Setup snoarqube code check for java projects using docker

# How To Use

- With docker container: TODO

```
# Destroy container, if existing
docker stop sonarqube; docker rm sonarqube

# Prepare java sonarqube project file
vim sonar-project.properties

source_dir="/opt/denny/source_code/project1" # TODO: customize this
# Start container. Here we use -v to mount source code
docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 \
        -v $source_dir:/opt/sonarqube/mycode \
        denny/sonarqube-by-docker:latest

# TODO: mount file
docker cp sonar-project.properties sonarqube:/opt/sonarqube/mycode/sonar-project.properties

# Run scan command. This would take 1 minutes.
# The stdout will show your report link, like below
# Sample: INFO: ANALYSIS SUCCESSFUL, you can browse http://localhost:9000/dashboard/index/test:myproject

docker exec -it sonarqube sh
cd /opt/sonarqube/mycode && sonar-runner

# Destroy it, if you don't need it
docker stop sonarqube  && docker rm sonarqube
```

- With docker-compose: TODO

TODO: securied port forwarding
