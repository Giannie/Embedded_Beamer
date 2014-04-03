#!/bin/bash

dist_id="$(lsb_release -is)"
release_version="$(lsb_release -rs)"

if [ "$dist_id" == "Ubuntu" -o "$dist_id" == "LinuxMint" ]; then
    supp=True
else
    echo "Distribution not supported"
    break
fi

if [ "$dist_id" == "Ubuntu" ]; then
    if [ "${release_version:0:2}" -lt "13" ]; then
        ./dep_old.sh
        ./build_vala.sh
    else
        ./dep.sh
    fi
elif [ "$dist_id" == "LinuxMint" ]; then
    if [ "${release_version:0:2}" -lt 15 ]; then
        ./dep_old.sh
        ./build_vala.sh
    else
        ./dep.sh
    fi
fi
