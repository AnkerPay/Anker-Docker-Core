FROM ubuntu:16.04
MAINTAINER Viktor Tyshchenko <viktor@ankerpay.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update >/dev/null 2>&1
RUN apt install -y software-properties-common 
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
      libdb++-dev \
      libboost-all-dev \
      libqrencode-dev \
      libminiupnpc-dev \
      libcurl4-openssl-dev \
      libdb-dev \
      libdb++-dev \
      libdb4.8-dev \
      unzip \
      wget

RUN apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Set workdir and extract package
WORKDIR /opt
RUN wget -O anker-linux.tar.gz https://github.com/AnkerPay/Anker/releases/download/1.0/anker-linux.tar.gz

RUN mkdir anker && tar -xf anker-linux.tar.gz -C /opt/anker/

WORKDIR /opt/anker

COPY anker.conf /opt/anker/anker.conf
# Copy our entrypoint file
COPY entrypoint.sh /

CMD ["/entrypoint.sh"]
