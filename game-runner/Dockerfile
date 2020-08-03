FROM ubuntu:18.04

RUN apt-get update \
    && apt-get upgrade -y

RUN apt-get -y install build-essential \
    libcurl4-openssl-dev \
    libboost-regex-dev \
    libjsoncpp-dev \
    librhash-dev \
    libtinyxml2-dev \
    libhtmlcxx-dev \
    libboost-system-dev \
    libboost-filesystem-dev \
    libboost-program-options-dev \
    libboost-date-time-dev \
    libboost-iostreams-dev help2man \
    cmake \
    libssl-dev \
    pkg-config \
    zlib1g-dev \
    wget \
    unzip

# todo: move to after deploy? Yeah probably. IMO this should be agnostic in games and requirements.
RUN mkdir -p /data/installers && mkdir -p /data/starters
COPY ./installers/*.sh /data/installers
COPY ./starters/*.sh /data/starters
COPY starters/start-starbound.sh /data/starbound/data/noarch/game/linux
#COPY ./starbound_1_4_4_34261.sh /data/starbound

RUN apt-get remove -y cmake \
    wget \
    build-essential \
    libcurl4-openssl-dev \
    libboost-regex-dev \
    libjsoncpp-dev \
    liboauth-dev \
    librhash-dev \
    libtinyxml2-dev \
    libhtmlcxx-dev \
    libboost-system-dev \
    libboost-filesystem-dev \
    libboost-program-options-dev \
    libboost-date-time-dev \
    libboost-iostreams-dev \
    help2man cmake libssl-dev \
    pkg-config git man \
    && apt autoremove --purge -y \
    && apt clean \
    && rm -rf /var/lib/apt/lists
