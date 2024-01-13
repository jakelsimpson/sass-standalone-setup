#!/bin/bash

# Text Colors
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# check if first parameter was passed
if [ -z "$1" ]; then
    echo -e "${RED}The first parameter is missing, which should be the working path to the directory that you want to move to the bin.${RESET}"
    exit 1
fi

# check if second parameter was passed
if [ -z "$2" ]; then
    echo -e "${RED}The second parameter is missing, which should be the directory name of the directory moved to the bin..${RESET}"
    exit 1
fi

# move the DIR to /usr/local/bin/
mv "$1" /usr/local/bin/

# add the new directory path to PATH
echo 'export PATH="/usr/local/bin/'"$2"':$PATH"' >> ~/.zshrc

# source the updated file
source ~/.zshrc

echo "Directory has been moved and added to path. Please try using the appropriate functions."
