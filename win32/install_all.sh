#!/bin/bash
./install_prereqs.sh
./download_libs_rpi.sh
./download_libs_wine.sh
./install_box86.sh
./install_gl4es.sh
./install_scripts.sh

echo "WINE first run..."

cd "${HOME}/mini-thingi/win32"
. ./env
wine wineboot
winecfg /v win2k
