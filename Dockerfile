
FROM centos:latest

USER root

WORKDIR /root/go

ENV HOME /root
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH $HOME/go

RUN yum update -y && yum install -y \
	epel-release \
	vim \
	less \
	&& yum install -y golang

CMD ["go","version"]

EXPOSE 9090
