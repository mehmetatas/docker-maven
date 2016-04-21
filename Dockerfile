FROM java:8

RUN apt-get update && \
    apt-get install -y maven
