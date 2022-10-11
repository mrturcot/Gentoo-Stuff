#!/bin/bash

cd ~/github/ffmpeg &&
git pull &&
while true; do
read -p "FFmpeg: Do you want to proceed? (y/n) " yn
case $yn in 
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac
done
make clean &&
    PKG_CONFIG_PATH="/usr/local/lib/pkgconfig" ./configure \
        --cc=/usr/lib/llvm/14/bin/clang \
        --cxx=/usr/lib/llvm/14/bin/clang++ \
        --pkg-config-flags="--static" \
        --extra-libs="-lpthread -lm" \
        --enable-openssl \
        --enable-gpl \
        --enable-nonfree \
        --enable-libdrm \
        --enable-libaom \
        --enable-libass \
        --enable-libfdk-aac \
        --enable-libfreetype \
        --enable-libmp3lame \
        --enable-libopus \
        --enable-libdav1d \
        --enable-libvorbis \
        --enable-libvpx \
        --enable-libx264 \
        --enable-libx265 && \
make -j14 &&
sudo make install
