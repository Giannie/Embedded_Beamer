#!/bin/bash

dist_id="$(lsb_release -is)"
release_version="$(lsb_release -rs)"

if [ "$dist_id" == "Ubuntu" -o "$dist_id" == "LinuxMint" ]; then
    supp=True
else
    echo "Distribution not supported"
    esac
fi

if [ "$dist_id" == "Ubuntu" ]; then
    if [ "$release_version" -lt "13" ]; then
        ./dep_old.sh
        ./build_vala.sh
    else
        ./dep.sh
    fi
elif [ "$dist_id" == "LinuxMint" ]; then
    if [ "$release_version" -lt 15 ]; then
        ./dep_old.sh
        ./build_vala.sh
    else
        ./dep.sh
    fi
fi

sudo apt-get install libgstreamer0.10-dev libgee-dev valac-0.20 libgstreamer-plugins-base0.10-dev librsvg2-dev libpoppler-glib-dev libgtk2.0-dev git build-essential libav-tools
