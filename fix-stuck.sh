#!/bin/bash
g='\e[1;92m'
b='\e[34m'
r='\e[0m'
y='\e[1;33m'
c='\e[1;96m'





clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${c} Updating and Installing packages.  This may take up to 2 hours,  please wait${r}\n"



proot-distro login ubuntu -- rm -f /var/lib/dpkg/info/elementary-xfce-icon-theme.postinst

proot-distro login ubuntu -- dpkg --force-all --configure elementary-xfce-icon-theme

proot-distro login ubuntu -- dpkg --configure -a

proot-distro login ubuntu -- apt --fix-broken install -y
