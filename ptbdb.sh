#!/bin/bash
#
#
#
#
#

URL="https://physionet.org/physiobank/database/ptbdb/"
IGNORED_FILES=""

# Make sure only root can run the script
# because Wget needs root privilegies
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root." 1>&2
   exit 1
fi

# wget options:
#    - recursive
#    - no host directory
#    - no parent directories
#    - no robots
#    - no messages
#    - ignore some directories
#    - reject html files
wget -r -nH -np -e robots=off --quiet --cut-dirs=2 --reject index.html?* $URL

if [ $? -eq 0 ]; then
    echo "Done. Enjoy! =)"
    exit 0
elif [ $? -eq 130 ];
    echo "Error: script terminated by Control-C."
else 
    echo "Error: something went wrong. Try again."
fi