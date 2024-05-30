#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in Archus Folder."
    echo "Please use ./archus.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the Archus Project"
git clone https://github.com/dimmus/archus

echo "Executing Archus Script"

cd $HOME/archus

exec ./archus.sh
