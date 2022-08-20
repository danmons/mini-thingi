#!/bin/bash

SBCDISTRO=$(lsb_release --codename --short)
SBCARCH=$(uname -m)

./install_prereqs.sh
./download_libs_rpi_${SBCDISTRO}_${SBCARCH}.sh
./download_libs_wine.sh
./install_box86_${SBCDISTRO}_${SBCARCH}.sh
./install_gl4es_${SBCDISTRO}_${SBCARCH}.sh
./install_scripts.sh

echo "WINE first run..."

cd "${HOME}/mini-thingi/win32"
. ./env
wine wineboot
winecfg /v win2k
