#!/bin/bash
g='\e[92m'
b='\e[34m'
r='\e[0m'
y='\e[1;33m'
c='\e[1;96m'
commands(){                                                
type_effect () {
    local text="$1"
    local delay=$2                                         
    for ((i=0; i<${#text}; i++)); do                               printf "${c}${text:$i:1}${r}"
        sleep "$delay"                                         done
    echo                                                   }
clear                                                      printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "$c"
type_effect "Welcome" 0.04
sleep 0.2
type_effect "Hello , User" 0.08
sleep 0.5
type_effect "May your work will easier" 0.08
sleep 0.7
type_effect "Let's get started!" 0.08
sleep 0.2
type_effect "Enjoy proot-distro-ubuntu" 0.04

printf "$r"
sleep 2

dpkg --configure -a
apt --fix-broken install
clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${c} Updating and installing packages ${g}.....${r}\n"
yes | termux-setup-storage
apt update -y && apt install proot-distro -y && apt install x11-repo  -y && apt install termux-x11-nightly -y
apt install proot-distro -y
clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${c} Installing distro ${g}.....${r}\n"
proot-distro install ubuntu

clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"

printf "${b}[${g}*${b}]${g} Adding user ubuntu ${g}.....${r}\n"
proot-distro login ubuntu -- adduser ubuntu

printf "${b}[${g}*${b}]${g} Ubuntu installed! ${r}\n"
printf "${b}[${g}*${b}]${g} Run ${y} ubuntu ${g} to get Ubuntu cli ${r}\n"
printf "${b}[${g}*${b}]${g} If you want GUI , Then run ${r}\n"

printf "${b}[${g}*${b}]${y} ./gui.sh ${r}\n"


cat > $PREFIX/bin/server << 'EOF'
#!/bin/bash
echo "Starting server... started!"
termux-x11 :0
EOF

chmod +x $PREFIX/bin/server
cat > $PREFIX/bin/ubuntu << 'EOF'
#!/bin/bash
proot-distro login ubuntu --shared-tmp -- su - ubuntu
EOF

chmod +x $PREFIX/bin/ubuntu

}
commands