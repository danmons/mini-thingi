#!/bin/bash

# armhf / ARM32

export PATH=/usr/lib/ccache:${PATH}

export LDIR=${HOME}/mini-thingi/win32/bullseye_armhf

mkdir -p ${HOME}/src >/dev/null

cd ${HOME}/src

if [ -d gl4es ]
then
  cd gl4es
  rm -rf build
  git clean -df
  git reset --hard HEAD
  git pull --recurse-submodules=yes
else
  git clone --recursive https://github.com/ptitSeb/gl4es.git
fi

cd ${HOME}/src/gl4es
rm -rf build
mkdir build
cd build

cmake .. -DODROID=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j4
mkdir -pv "${LDIR}/gl4es"
cp -vf ../lib/libGL.so.1 "${LDIR}/gl4es/"
