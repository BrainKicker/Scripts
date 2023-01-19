#!/bin/bash

printf "Running 'apt update'.\n"
sudo apt update

printf "\nRunning 'dpkg --configure -a'.\n"
sudo dpkg --configure -a

printf "\nRunning 'apt autoremove'.\n"
sudo apt autoremove

printf "\nRunning 'apt autopurge'.\n"
sudo apt autopurge

printf "\nDeinstalling removed packages.\n"
packages=$(dpkg --get-selections | grep deinstall | cut -f1)
printf "\nRemoving:\n$packages.\n\n"
sudo apt purge $packages

printf "\nRunning 'apt autoclean'.\n"
sudo apt autoclean

printf "\nRunning 'apt full-upgrade'.\n"
sudo apt full-upgrade