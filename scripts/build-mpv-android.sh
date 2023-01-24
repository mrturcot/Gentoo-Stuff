#!/bin/bash
## https://github.com/mpv-android/mpv-android

cd $HOME/github/mpv-android
rm -rf app/build
cd buildscripts
./download.sh &&
./buildall.sh --arch arm64 mpv &&
./buildall.sh --clean
