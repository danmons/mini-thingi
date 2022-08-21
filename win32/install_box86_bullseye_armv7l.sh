#!/bin/bash

export PATH=/usr/lib/ccache:${PATH}

if [ -d "${HOME}/src/box86" ]
then
  echo "box86 source dir exists, refreshing and rebuilding..."
  cd ${HOME}/src/box86
  rm -rvf build
  git clean -df
  git reset --hard HEAD
  git pull --recurse-submodules=yes
else
  echo "box86 source not found, fetching..."
  mkdir -p ${HOME}/src 2>&1
  cd ${HOME}/src
  git clone --recursive "https://github.com/ptitSeb/box86.git"
fi

cd ${HOME}/src/box86
mkdir build
cd build
cmake .. -DUSE_CCACHE=1 -DRPI4=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j4
sudo make install
sudo systemctl restart systemd-binfmt
