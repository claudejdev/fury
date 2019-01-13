#!/bin/bash

# rm -rf ./assets/images/
# mkdir ./assets/images/

for file in $(find ./docs -name '*.docx'); do
  dirname=$(dirname $file)
  dirname=$(echo ${dirname#./docs/})
  countryname=$(basename $(dirname $file))
  filename=$(basename $file)
  filename="${filename%.*}"
  assetsdir=assets/images/nato/$dirname
  markdowndir=content/nato/$dirname

  if [ ! -d $assetsdir ]; then
    mkdir -p $assetsdir
  fi

  if [ ! -d $markdowndir ]; then
    mkdir -p $markdowndir
  fi

  pandoc $file -f docx -t gfm > $assetsdir/"$filename.md" --extract-media $assetsdir
  sed -E "s/(assets)/\/\1/g;s/(media\/)//g" $assetsdir/$filename.md > $markdowndir/body.md

  mv $assetsdir/media/* $assetsdir
  rm -rf $assetsdir/media
  rm $assetsdir/$filename.html
  rm $assetsdir/$filename.md
done
