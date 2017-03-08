#!/bin/bash

rm -f old_code/image_lib/image_new/*.png
rm -f old_code/image_lib/image_new/*.jpg
rm -f old_code/image_lib/image_spider/*.jpg
commit_time=`date +%m/%d/%Y\ %H:%M:%S`
commit_content=`openssl rand -base64 33`
git add .
git commit -am "$commit_content ## $commit_time"
git push -u origin master
