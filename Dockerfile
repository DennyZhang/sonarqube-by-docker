########## How To Use Docker Image ###############
##
##  Image Name: denny/sonarqube-by-docker:latest
##  Git link: https://github.com/DennyZhang/sonarqube-by-docker/blob/master/Dockerfile
##  Docker hub link:
##  Build docker image: docker build --no-cache -t denny/sonarqube-by-docker:latest --rm=true .
##  How to use:
##      https://github.com/DennyZhang/sonarqube-by-docker/blob/master/README.md
##
##  Description:
##
##  Read more:
##################################################
# Base Docker image: https://hub.docker.com/_/sonarqube/

FROM sonarqube:6.5-alpine

ENV SONAR_SCANNER_VERSION "2.5"
ENV SONAR_RUNNER_HOME "/opt/sonarqube/sonar-scanner-$SONAR_SCANNER_VERSION"
ENV PATH "$PATH:$SONAR_RUNNER_HOME/bin"

RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-$SONAR_SCANNER_VERSION.zip && \
    unzip sonar-scanner-$SONAR_SCANNER_VERSION.zip && rm -rf sonar-scanner-$SONAR_SCANNER_VERSION.zip
