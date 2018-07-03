FROM  ubuntu:xenial
MAINTAINER Spencer Owen <sowen@netdocuments.com>

ENV OCTOVERSION 4.37.0
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get install libunwind8 icu-devtools curl openssl -y
RUN cd /usr/bin && curl -s https://download.octopusdeploy.com/octopus-tools/$OCTOVERSION/OctopusTools.$OCTOVERSION.ubuntu.16.04-x64.tar.gz | tar xvz
