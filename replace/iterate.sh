#!/usr/bin/bash

prefix="co.ab180.dependencies"
before=$1
after="$prefix.$before"

fileList=$(find -mindepth 1 -maxdepth 1 -type f)
dirList=$(find -mindepth 1 -maxdepth 1 -type d)

for file in $fileList
do
    sed -i "s/$before/$after/g" $file
done

for dir in $dirList
do
  cd $dir
  $BASH_SOURCE $before
  cd ..
done
