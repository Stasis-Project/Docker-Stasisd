FROM ubuntu:16.04

MAINTAINER Stasis <jared@stasisgaming.com>

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install build-essential libssl-dev libdb++-dev libboost-all-dev libminiupnpc-dev libqrencode-dev autoconf automake cmake libtool libgmp-dev vim
RUN apt-get -y install git

RUN git clone https://github.com/Stasis-Project/Stasis-Core

WORKDIR Stasis-Core/src/secp256k1
RUN ./autogen.sh
RUN ./configure --enable-module-recovery
RUN make clean
WORKDIR /Stasis-Core/src/
RUN make -f makefile.unix
WORKDIR /
ADD mount/dotfiles /root
ADD mount/etc /etc
