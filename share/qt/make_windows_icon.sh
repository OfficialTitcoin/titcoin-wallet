#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/titcoin.png
ICON_DST=../../src/qt/res/icons/titcoin.ico
convert ${ICON_SRC} -resize 16x16 titcoin-16.png
convert ${ICON_SRC} -resize 32x32 titcoin-32.png
convert ${ICON_SRC} -resize 48x48 titcoin-48.png
convert titcoin-16.png titcoin-32.png titcoin-48.png ${ICON_DST}

