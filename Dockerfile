# Build Stage
FROM --platform=linux/amd64 ubuntu:20.04 as builder
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y vim less man wget tar git gzip unzip make cmake software-properties-common curl 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gcc-multilib

ADD . /first-cc-gcc
WORKDIR /first-cc-gcc
RUN chmod +x fix_tab.sh
RUN make
