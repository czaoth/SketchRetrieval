#!/usr/bin/env bash

# One folders with PNG format files and the name of the output file
# bash view_selector.sh ../../../data/TinySketch/view/

Files="$1"
Name="$2"
for Folder in $Files*/
do
    ./ViewSelector/Release/selector $Folder $Folder/$Name
done
