#!/bin/bash
g='\e[92m'
b='\e[34m'
r='\e[0m'
a(){

clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${g}Updating and  Installing packages (xubuntu-desktop and dbus-x11)  ${r}\n"
proot-distro login ubuntu -- b(){
apt update -y 
apt install xubuntu-desktop dbus-x11 -y
printf "${b}[${g}*${b}]${g}Adding user " ubuntu ${r}\n"
clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${g}Finishing...
Everthing is good!
You can launsh ubuntu via
termux-x11 using command -
1.server 
2.ubuntu
3.gui
Enjoy! ${r}\n"