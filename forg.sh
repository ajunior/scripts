#! /bin/bash
#
# forg.sh (File Organizer)
# It organize the downloaded files in the download directory
# 
# Copyright (C) 2015, Adjamilton Junior

# Path of the monitored directory
dir="$HOME/Downloads"

# Path for the log file
log="$HOME/forg.log"

# Checking if the monitored directory exist
if [ ! -d $dir ]; then
	echo "$(date +"<%c> Directory not exist.")" >> $log
	exit 0
fi

# Checking if monitored directory is empty
if [ "$(find $dir -maxdepth 0 -empty -type d)" ]; then
	echo "$(date +"<%c> Directory is empty.")" >> $log
	exit 0
fi

# File formats
format=(
	# Image
	*.jpg *.jpeg *.gif *.tiff *.webp *.bmp *.png *.ico
	
	# Document (texts, sheets, appresentations etc) types
	*.doc *.docx *.odt *.txt *.pdf *.xls *.ppt *.pptx *.ps
	
	# Compressed file
	*.zip *.rar *.gz *.tar *.cab *.arj *.ace
	
	# Videos
	*.mp4 *.avi
	
	# Audio
	*.mp3 *.midi
	
	# Torrent
	*.torrent
	
	# Installer package
	*.dmg *.deb *.rpm *.exe
)

# Change to the monitored directory 
cd $dir

# Here is where the magic happens ;)
# IMPORTANT: Remmember to check the target directory for each add file format 
for ((i=0; i<${#format[@]}; i++)); do 
	if [ "$(find $dir -maxdepth 1 -type f -name "${format[$i]}")" ]; then
		case ${format[$i]} in
			# image formats
			*.jpg|*.jpeg|*.gif|*.tiff|*.webp|*.bmp|*.png|*.ico)
				if [ "$(mv ${format[$i]} "$HOME/Pictures")" ]; then
					echo "$(date +"<%c> file(s) moved succesfully.")" >> $log
				fi
			;;
			
			# document formats
			*.doc|*.docx|*.odt|*.txt|*.pdf|*.xls|*.ppt|*.pptx|*.ps)
				if [ "$(mv ${format[$i]} "$HOME/Downloads/Docs")" ]; then
					echo "$(date +"<%c> file(s) moved succesfully.")" >> $log
				fi
			;;
			
			# compressed formats	
			*.zip|*.rar|*.gz|*.tar|*.cab|*.arj|*.ace)
				if [ "$(mv ${format[$i]} "$HOME/Downloads/Zipped")" ]; then
					echo "$(date +"<%c> file(s) moved succesfully.")" >> $log
				fi
			;;
			
			# video formats	
			*.mp4|*.avi)
				if [ "$(mv ${format[$i]} "$HOME/Downloads/Videos")" ]; then
					echo "$(date +"<%c> file(s) moved succesfully.")" >> $log
				fi
			;;
			
			# Audio formats	
			*.mp3|*.midi)
				if [ "$(mv ${format[$i]} "$HOME/Downloads/Videos")" ]; then
					echo "$(date +"<%c> file(s) moved succesfully.")" >> $log
				fi
			;;
			
			# torrent format
			*.torrent)
				if [ "$(mv ${format[$i]} "$HOME/Downloads/Torrents")" ]; then
					echo "$(date +"<%c> file(s) moved succesfully.")" >> $log
				fi
			;;
			
			# installer package format	
			*.dmg|*.deb|*.rpm|*.exe)
				if [ "$(mv ${format[$i]} "$HOME/Downloads/Installers")" ]; then
					echo "$(date +"<%c> file(s) moved succesfully.")" >> $log
				fi
		esac				
	fi
done