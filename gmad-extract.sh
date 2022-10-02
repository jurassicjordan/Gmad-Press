#!/bin/bash
#set working directory
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
#change working directory
cd "$parent_path"
#open file browser and set it to files variable
files=$(./bin/zenity --file-selection --title="Select a .gma file")
[[ "$files" ]] || exit 1
#idfk
echo $files|tr "|" "\n"|while read files
do
'./bin/gmad_linux' extract -file "$files" -out "$files-Extracted"
done
espeak "Garry's Mod Addon Extracted" &
#say the thing
kdialog --msgbox "gma extracted"


#Linux is the best operating system
