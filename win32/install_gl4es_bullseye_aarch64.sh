#!/bin/bash

# armhf / ARM32
export PATH=/usr/lib/ccache:${PATH}
export LDIR=${HOME}/mini-thingi/win32/bullseye_armhf

mkdir -p ${HOME}/src >/dev/null

## git pull / cone

cd ${HOME}/src/gl4es
rm -rf build
mkdir build
cd build

export CC="/usr/lib/ccache/arm-linux-gnueabihf-gcc-10"
export CXX="/usr/lib/ccache/arm-linux-gnueabihf-g++-10"
export LD="/usr/arm-linux-gnueabihf/bin/ld"
export CFLAGS="-L${LDIR}/usr/lib/arm-linux-gnueabihf -L${LDIR}/usr/lib -L${LDIR}/lib"
export CPPGLAGS="-L${LDIR}/usr/lib/arm-linux-gnueabihf -L${LDIR}/usr/lib -L${LDIR}/lib"
export LIBS="-L${LDIR}/usr/lib/arm-linux-gnueabihf -L${LDIR}/usr/lib -L${LDIR}/lib"
export CROSS_BUILD=1
export PLATFORM=arm

#export CMAKE_C_COMPILER="/usr/lib/ccache/arm-linux-gnueabihf-gcc-10"
#export CMAKE_CXX_COMPILER="/usr/lib/ccache/arm-linux-gnueabihf-g++-10"
#export CMAKE_SYSROOT="${LDIR}"

cmake .. -DODROID=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j4
mkdir -pv "${LDIR}/gl4es"
cp -vf ../lib/libGL.so.1 "${LDIR}/gl4es/"
