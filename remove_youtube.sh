#!/bin/bash

for i in $(ls *.md); do
    sed -i '/^featured_image.*/d' $i # Delete lines that begin with featured_image tag on converted posts
    sed -i '/^type.*/d' $i # Delete lines that begin with type from hugo posts
    sed -i 's/http:\/\/localhost/https:\/\/4fasters\.com\.br/g' $i # substitute localhost to the real hostname to fetch wordpress images
    sed -i 's/^.*\* _\$/```\n/g;s/_$/\n```/g' $i # some complex expressions to use  .md format
    sed -i 's/^_\$/```\n/g' $i
    sed -i 's/^# /## /g;s/_$/\n```/g' $i
    sed -i '.*optinengine.*d' $i
    sed -i '/^date/a description: ""' $i
done
