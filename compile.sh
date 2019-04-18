#!/bin/bash
if [ ! -f deb_package/tmp/patched.7z ]; then
	wget "https://drive.google.com/uc?id=1biOG_ges2_uFbhCKaMU0X_r66PVNxExe&export=download" -O ChemSketch-wine.7z
	mv ChemSketch-wine.7z deb_package/tmp/patched.7z
fi
dpkg-deb -b deb_package .