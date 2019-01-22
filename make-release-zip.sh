#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

rm -rf release

ZIPNAME="slides-kubernetes-101-zh-cn-$(date "+%Y%m%d")"
mkdir -p release/$ZIPNAME

mkdir -p release/$ZIPNAME/fonts
cp fonts/* release/$ZIPNAME/fonts
mkdir -p release/$ZIPNAME/photos
cp photos/*.jpg release/$ZIPNAME/photos/
mkdir -p release/$ZIPNAME/img
cp img/*.png release/$ZIPNAME/img/
mkdir -p release/$ZIPNAME/diagrams
cp diagrams/*.svg release/$ZIPNAME/diagrams/
mkdir -p release/$ZIPNAME/js
cp js/* release/$ZIPNAME/js/

cp index.html release/$ZIPNAME/
cp slides.md release/$ZIPNAME/
cp LICENSE.md release/$ZIPNAME/
cp README.md release/$ZIPNAME/

cd release
# zip -r $ZIPNAME.zip $ZIPNAME
tar -zcf $ZIPNAME.tar.gz $ZIPNAME
rm -rf $ZIPNAME
