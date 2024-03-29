#!/bin/bash
# Update Script for ReconTool v2 -Stable
# Script created by @hackelite01


dependencies() {

command -v git > /dev/null 2>&1 || { echo >&2 "Package GIT is not installed ... Unable to update ..."; exit 1; }

}

script() {

clear
printf "\n \e[1;92mUpdating \e[1;94mReconTool\e[1;92m ...\n\n"
sleep 1.5
cd ..
rm -rf ReconTool
git clone https://github.com/hackelite01/ReconTool
cd ReconTool
chmod +x run.sh
printf "\n\e[1;92mRestarting ...\n\e[0m"
bash run.sh
cd ..

}

dependencies
script

