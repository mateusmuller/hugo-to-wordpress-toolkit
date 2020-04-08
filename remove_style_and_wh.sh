#!/bin/bash

for i in $(ls .); do
  sed -r '/^<figure/ s/style="[^"]+"//g' $i # remove those tags on figure lines so the image becomes scalable
  sed -r '/^<figure/ s/width="[^"]+"//g' $i
  sed -r '/^<figure/ s/height="[^"]+"//g' $i
done
