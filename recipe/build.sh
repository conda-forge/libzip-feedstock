#!/bin/bash

mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make
make test
make install
