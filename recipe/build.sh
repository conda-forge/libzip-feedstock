#!/bin/bash

mkdir build && cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_INSTALL_INCLUDEDIR=include \
    -DENABLE_COMMONCRYPTO=OFF \
    -DENABLE_GNUTLS=OFF \
    -DENABLE_MBEDTLS=OFF \
    -DENABLE_OPENSSL=ON \
    -DENABLE_WINDOWS_CRYPTO=OFF \
    -DENABLE_BZIP2=ON \
    -DENABLE_LZMA=OFF \
    -DENABLE_ZSTD=OFF \
    ..
make
make test
make install
