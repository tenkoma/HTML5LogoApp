#!/bin/sh
cd `dirname $0`

mkdir html5
cp -r HTML5.app LICENSE README.md html5/

hdiutil create -ov -srcfolder html5 -fs HFS+ -format UDZO \
    -imagekey zlib-level=9 -volname "HTML5 LOGO" html5logo.dmg
rm -rf html5
