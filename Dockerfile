FROM ubuntu:20.04

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install git gcc make -y

RUN git clone https://github.com/ThomasHabets/gtping.git \
    && cd gtping \
    && ./configure \
    && make \
    && make install

ENTRYPOINT ["gtping"]