#!/bin/zsh
./ink
echo "Ink Finished"
rm -rf ./blog/*
echo "Remove the old content"
cp -rf ./public/* ./blog
echo "copy the new content"
cd ./blog
git add .
git commit -m "update using publish.sh"
git push
echo "Successful"