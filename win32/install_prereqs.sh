#!/bin/bash

echo "Syncing APT mirrors..."
sudo apt update
echo "Installing build tools..."
sudo apt install -y \
 apitrace \
 aria2 \
 autoconf \
 automake \
 bison \
 build-essential \
 bzip2 \
 ccache \
 cmake \
 coreutils \
 curl \
 flex \
 g++ \
 gawk \
 gcc \
 git \
 gzip \
 help2man \
 imagemagick \
 libtool \
 libtool-bin \
 make \
 p7zip \
 p7zip-full \
 rsync \
 texi2html \
 texinfo \
 unzip \
 wget \
 xz-utils \
 zip \
 zstd \


SBCARCH=$(uname -m)
if [ "${SBCARCH}" == "aarch64" ]
then
  echo "Installing armhf/ARM32 libraries and tools..."
  sudo apt install -y \
   cpp-arm-linux-gnueabihf \
   gcc-10-arm-linux-gnueabihf \
   gcc-arm-linux-gnueabihf \
   libasan6-armhf-cross \
   libatomic1-armhf-cross \
   libc6-armhf-cross \
   libc6-dev-armhf-cross \
   libgcc-10-dev-armhf-cross \
   libgcc-s1-armhf-cross \
   libgomp1-armhf-cross \
   libstdc++6-armhf-cross \
   libubsan1-armhf-cross \
   linux-libc-dev-armhf-cross \

fi
