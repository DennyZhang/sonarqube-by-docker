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
