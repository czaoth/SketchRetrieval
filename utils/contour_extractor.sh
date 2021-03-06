#!/usr/bin/env bash

# One folders with PNG format files and one folder to the contour
# Ex: bash contour_extractor.sh ../../../data/TinySketch/view/ ../../../data/TinySketch/contour/

Files="$1"
Dest_Folder="$2"

for Folder in $Files*/
do
    Dest_Folder_Name="${Folder%/}"
    Dest_Folder_Name="${Dest_Folder_Name##*/}"
    # Create the folder
    rm -rf "$Dest_Folder$Dest_Folder_Name/";
    mkdir "$Dest_Folder$Dest_Folder_Name/";

    for Src in $Folder*
    do
            #echo $Src
            # Get the file name (after the last '/')
            File="${Src##*/}"
            # Run the contour_extraction
            ./Contour/Release/contour -f $Src -t $Dest_Folder$Dest_Folder_Name/$File;
    done
done