FROM ubuntu:16.04
MAINTAINER Viktor Tyshchenko <viktor@ankerpay.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common 
RUN apt-add-repository -y ppa:bitcoin/bitcoin 

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install \
      apt-utils \
      git \
      libwww-perl \
      build-essential \
      libtool \
      automake \
      autotools-dev \
      autoconf \
      pkg-config \
      libssl-dev \
      libgmp3-dev \
      libevent-dev \
      bsdmainutils \
      libboost-all-dev \
      libqrencode-dev \
      libminiupnpc-dev \
      libcurl4-openssl-dev \
      libdb4.8 \
      libdb4.8++ \
      unzip \
      wget

RUN apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Set workdir and extract package
WORKDIR /opt

RUN mkdir anker

WORKDIR /opt/anker


COPY ankerd /opt/anker/ankerd
COPY anker-cli /opt/anker/anker-cli

# Copy our entrypoint file
COPY entrypoint.sh /

CMD ["/entrypoint.sh"]
