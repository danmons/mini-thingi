#!/bin/bash

sudo apt clean
sudo apt update
sudo apt install -y $( cat conf/rpi_packages_bullseye_armhf | tr '\n' ' ' )


