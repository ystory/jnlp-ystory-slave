FROM jenkins/jnlp-slave
MAINTAINER Yongsul Kim <ystory84@gmail.com>

ARG user=jenkins
USER root
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
  chmod +x ./kubectl && \
  mv ./kubectl /usr/local/bin/kubectl
USER ${user}
