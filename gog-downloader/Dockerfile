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

# Install GOG downloader.
RUN mkdir /data
WORKDIR /data
RUN wget https://sites.google.com/site/gogdownloader/lgogdownloader-3.7.tar.gz;
RUN tar -xvzf lgogdownloader-3.7.tar.gz
WORKDIR /data/lgogdownloader-3.7

# Lgogdownloader can only login via an interactive script.
# Patched it so it accepts env vars. Copy lgogdownloader patch to container and apply it.
COPY ./patch /patch
RUN patch -p0 < /patch/login-envvars.patch

# Install pathed lgogdownloader.
RUN mkdir build
WORKDIR /data/lgogdownloader-3.7/build
RUN cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DUSE_QT_GUI=OFF
RUN make
RUN make install

#### todo: remove!
ENV GOG_USER=ce.juyn@gmail.com
ENV GOG_PASSWORD=tsuki1011
ENV GAME=terraria
ENV GOG_INSTALLER_ID=en3installer0
####

# Get all the games from a user's account.
WORKDIR /data
RUN lgogdownloader --login
RUN lgogdownloader --list > games.json

# Download the requested game.
COPY ./get-games.sh /data
COPY ./download-game.sh /data
RUN mkdir -p /data/$GAME
WORKDIR /data/$GAME
#RUN sh /data/download-game.sh

# Cleanup.
RUN rm /data/lgogdownloader-3.7.tar.gz
#RUN apt-get remove -y cmake \
#    build-essential \
#    help2man cmake libssl-dev \
#    pkg-config git man \
#    && apt autoremove --purge -y \
#    && apt clean \
#    && rm -rf /var/lib/apt/lists

# docker rm $(docker ps -aq)
