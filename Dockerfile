FROM buildpack-deps:xenial
MAINTAINER Michael Opitz <michael.opitz@icg.tugraz.at>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    gcc \
    git \
    g++ \
    imagemagick \
    libatlas-dev \
    libatlas-base-dev \
    libboost-all-dev \
    libblas-dev \
    libeigen3-dev \
    liblapack-dev \
    liblas-dev \
    liblas-c-dev \
    libprotobuf-dev \
    lbopencv-dev \
    mlocate \
    unzip \
    wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* 
