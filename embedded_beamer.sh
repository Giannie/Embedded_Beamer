#!/bin/bash

./dependencies.sh && ./build_pdfpc.sh
sudo cp create_poster /usr/local/bin/