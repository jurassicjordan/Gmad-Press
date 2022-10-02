#!/bin/bash
#set working directory
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
#change working directory
cd "$parent_path"
#open file browser and set it to files variable
files=$(./bin/zenity --file-selection --title="Select a Folder"  --directory)
[[ "$files" ]] || exit 1
#idfk
echo $files|tr "|" "\n"|while read files
do
'./bin/gmad_linux' create -folder "$files" -out "$files.gma"
done
espeak "Garry's Mod Addon Compressed" &
#say the thing
kdialog --msgbox "gma created"


#Linux is the best operating system
