FROM ubuntu:14.04

# Install Maven before Java. 
# We want to install Latest Java and Maven.
# If Maven is installed after Java it changes default Java version to 1.7
RUN \
  apt-get update && \
  apt-get install -y maven && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer
