#!/bin/bash

if [ ! -e vala-0.20.1.tar.xz ]; then
    wget http://ftp.gnome.org/pub/gnome/sources/vala/0.20/vala-0.20.1.tar.xz
fi
tar xJf vala-0.20.1.tar.xz

cd vala-0.20.1
./configure --prefix=/usr && make
sudo make install
