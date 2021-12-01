#!/bin/bash

## Compile OpenSSL
OPENSSL=openssl-1.1.1l.tar.gz

DONE=openssl-compile-done

if [ ! -f "${DONE}" ] ;then
    wget https://www.openssl.org/source/${OPENSSL}

    tar zxvf ${OPENSSL}

    cd $(basename $OPENSSL .tar.gz)

    ./config shared no-idea no-md2 no-mdc2 no-rc5 no-rc4 --prefix=/usr/local/

    make

    sudo make install

    cd ..

    touch ${DONE}
fi

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64/

read -n1 -r -p "$(/usr/local/bin/openssl version) - Press any key to continue..." key

source ./compile-nginx-with-tls13.sh

## copy systemctl config
cp nginx.service /lib/systemd/system/nginx.service
