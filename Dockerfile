FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt -y update
RUN apt -y install git
RUN apt -y install curl

WORKDIR /dev
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

CMD /bin/bash -c "sleep infinity"