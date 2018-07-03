FROM  ubuntu:xenial
MAINTAINER Spencer Owen <sowen@netdocuments.com>

ENV OCTOVERSION 4.37.0
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get install libunwind8 icu-devtools curl openssl liblttng-ust0 libcurl3 libssl1.0.0 libkrb5-3 zlib1g -y
RUN apt-get install libicu55 -y # ubuntu 16.x needs 55, ubuntu 18.04 will need libicu60 https://docs.microsoft.com/en-us/dotnet/core/linux-prerequisites?tabs=netcore2x
RUN cd /usr/bin && curl -s https://download.octopusdeploy.com/octopus-tools/$OCTOVERSION/OctopusTools.$OCTOVERSION.ubuntu.16.04-x64.tar.gz | tar xvz
