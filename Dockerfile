# Container image that runs your code
FROM python:3.8-alpine
RUN apk update
RUN apk add git
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . /action
RUN ls
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/action/entrypoint.sh"]
