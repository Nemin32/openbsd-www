#!/bin/sh

cp -r src/images build/images

for f in src/*.html
do
  m4 -I src $f > "build/$(basename $f)"
done

sass --update src/scss:build/css
