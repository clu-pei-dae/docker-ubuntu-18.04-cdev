FROM ubuntu:18.04

LABEL author="Mirko Hering <mirko@jmhering.net>"

ENV  MYSQL_REPO=http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm \
     CMAKE_DOWNLOAD=https://github.com/Kitware/CMake/releases/download/v3.14.1/cmake-3.14.1-Linux-x86_64.sh \
     FIND_MYSQL_URL=https://raw.githubusercontent.com/Icinga/icinga2/master/third-party/cmake/FindMySQL.cmake

RUN apt-get update && apt-get install -y \
    cmake \
    build-essential \
    libmysqlclient-dev \
    wget \
    python-dev \
    pkg-config \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://raw.githubusercontent.com/willbryant/kitchen_sync/master/cmake/Modules/FindMySQL.cmake -O /usr/share/cmake-3.5/Modules/FindMySQL.cmake

