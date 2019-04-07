#!/bin/bash
if [ ! -f deb_package/tmp/patched.7z ]; then
	wget "https://drive.google.com/uc?id=1Yiq2dqAH4awzlEf7ZKfwpYFtvODZ4NbQ&export=download" -O ChemSketch-wine.7z
	mv ChemSketch-wine.7z deb_package/tmp/patched.7z
fi
dpkg-deb -b deb_package .