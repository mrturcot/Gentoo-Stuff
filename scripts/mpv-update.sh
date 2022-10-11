#!/bin/bash

cd ~/github/mpv &&
git pull &&
while true; do
read -p "MPV: Do you want to proceed? (y/n) " yn
case $yn in 
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac
done
rm -rf build &&
	PKG_CONFIG_PATH="/usr/local/lib/pkgconfig" meson \
		-Dprefix=/usr/local \
		-Dlua=luajit \
		-Dwayland=disabled \
		-Dvdpau=disabled \
		-Djack=disabled \
		-Dgbm=disabled \
		-Degl=disabled \
		-Degl-drm=disabled \
		-Degl-x11=disabled \
		-Dshaderc=enabled \
		-Dvaapi=enabled \
		-Dvaapi-drm=enabled \
		-Dvaapi-x11=enabled \
		-Ddrm=enabled \
		-Dpipewire=enabled \
		-Dvulkan=enabled \
		-Dgl=enabled \
		-Dgl-x11=enabled \
		-Dx11=enabled \
		-Dlibplacebo=enabled \
		-Dbuild-date=true \
		-Dhttps://=enabled build && \
meson compile -C build &&
sudo meson install -C build
