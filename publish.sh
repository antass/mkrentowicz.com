#!/bin/bash

## Commit changes to get correct timestamp
echo 'Committing changes to git' 
git add .
git commit -am "update site"
git push

## Copy site to repository for github hosting
echo 'Uploading site to Dreamhost'
#rsync -avz --checksum --delete /home/ania/Dropbox/labnotebook/_site/ antass@quicksilver.dreamhost.com:aniatassinari.com/labnotebook  
rsync -avz --checksum --delete --chmod=Fa-w /Users/antass/GitHub/mkrentowicz.com/site/HTML/ antass@holly.dreamhost.com:mkrentowicz.com
echo "Site updated and uploaded to Dreamhost"


