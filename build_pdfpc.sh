#!/bin/bash

git clone https://github.com/davvil/pdfpc.git

cd pdfpc
git submodule init
git submodule update
mkdir build
cd build
cmake ../
make -j8
sudo make install
