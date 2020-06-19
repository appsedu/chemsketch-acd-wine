#!/bin/bash
if [ ! -f deb_package/tmp/patched.7z ]; then
	wget "https://drive.google.com/uc?id=1biOG_ges2_uFbhCKaMU0X_r66PVNxExe&export=download" -O ChemSketch-wine.7z
fi
if [ -f ChemSketch-wine.7z ]; then
	mv ChemSketch-wine.7z deb_package/tmp/patched.7z
fi
dpkg-deb -b deb_package .