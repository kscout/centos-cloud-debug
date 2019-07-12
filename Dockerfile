FROM centos:latest

# Install editors
RUN yum install -y emacs vim

# Install command line tools
RUN yum install -y git zsh wget bind-utils zsh

# Install Openshift 4 Client
WORKDIR /tmp
RUN curl -l https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux-4.1.4.tar.gz > /tmp/openshift-client-linux.tar.gz
RUN tar -xzf /tmp/openshift-client-linux.tar.gz
RUN mv /tmp/{kubectl,oc} /usr/local/bin
RUN rm /tmp/openshift-client-linux.tar.gz

# Create user
RUN useradd cloud
USER cloud
WORKDIR /home/cloud

ENTRYPOINT /bin/zsh
