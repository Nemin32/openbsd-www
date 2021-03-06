#!/bin/sh

mkdir build &>/dev/null
mkdir build/css &>/dev/null

cp -r src/images build/

for f in src/*.html
do
  m4 -I src $f > "build/$(basename $f)"
done

sass --update src/scss:build/css
