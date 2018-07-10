[![Docker](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/docker.png)](https://hub.docker.com/r/denny/sonarqube-by-docker) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

[![LinkedIn](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/github.png)](https://github.com/DennyZhang) [![Twitter](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/twitter.png)](https://twitter.com/dennyzhang001) [![Slack](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/slack.png)](https://mywechat.slack.com/join/shared_invite/enQtMjQ0Mjg4ODk2Mjc2LTk1MTQyNTE2ZjEyNGZjZDkyOTY5ODEzMDY5ZGJkODY1OTNlYTllZTFjMGY2YzhjYjM0M2FiM2Y0OGQ5NGI3Y2U)
<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/fork_github.png" /></a>

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
