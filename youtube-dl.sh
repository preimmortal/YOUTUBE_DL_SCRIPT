#!/bin/bash

##################
#ARGUMENTS:
#1: Playlist Link
#2: Directory Name (optional)
##################

dirname="/media/USBHDD1/YOUTUBE_DL/dl"
if [ "$1" != "" ]; then
    echo "Processing the following link:" $1
    if [ "$2" != "" ]; then
        dirname=$dirname"_"$2"/"
    else
        dirname=$dirname"/"
    fi
    
    echo "Directory: " $dirname
    if [ ! -d "$dirname" ]; then
        echo Creating directory: $dirname
        mkdir -p -- "$dirname"
    fi
    youtube-dl -x --audio-format "mp3" --restrict-filenames -i -o "$dirname%(title)s.%(ext)s" $1 
else
    echo "No Input, enter following"
    echo "1: Playlist Link"
    echo "2: Folder Name (optional)"
fi
