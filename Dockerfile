FROM infopen/ubuntu-xenial-ssh:0.1.0
MAINTAINER Alexandre Chaussier <a.chaussier@infopen.pro>

# Install base packages
RUN apt-get update && \
    apt-get -o Dpkg::Options::="--force-overwrite" install -y \
        openjdk-9-jdk=9~b114-0ubuntu1 \
        git=1:2.7.4-0ubuntu1

# Create user for Jenkins
RUN useradd -m \
            -s /bin/bash \
            jenkins

# Set password for jenkins user
RUN echo "jenkins:jenkins" | chpasswd
