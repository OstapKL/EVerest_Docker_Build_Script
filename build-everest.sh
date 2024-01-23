#!/bin/bash

source /root/config.sh

echo **************************
echo *    BUILDING EVEREST    *
echo **************************

cd "$EVEREST_DEV/everest-core"
mkdir build
cd build
cmake ..
make -j$(nproc) install
