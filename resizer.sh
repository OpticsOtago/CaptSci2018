#! /bin/bash

mkdir -p gallery-thumbnail
mkdir -p gallery-full

for img in *.*
do

convert $img -resize 400x400 gallery-thumbnail/$img
convert $img -resize 1200x1200 gallery-full/$img

done
