#!/bin/bash

function usage {
    echo "Usage: $0 <model>"
    echo "Available models: bpi-r3 bpi-r4"
}

[ $# -ne 1 ] && usage && exit 1

model=$1

case $model in
    bpi-r3) ;;
    bpi-r4) ;;
    *) echo "Unsupported model: $model" && usage && exit 1 ;;
esac

time {
    sudo umount -l ../build
    sudo rm -rf ../build ../SD
    make clean
    git restore build.conf
    sed -ri "s/^#(board=${model})/\1/" build.conf
    ./build.sh importconfig
    ./build.sh build
    ./build.sh pack
}
