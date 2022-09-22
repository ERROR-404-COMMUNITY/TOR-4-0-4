.#!/bin/bash
R='\033[1;31m'
G='\033[1;32m'
Goke='\033[92m'
Glig=='\e[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[0m'
GR='\e[90m'
LRED="\e[101m"
DGRAY="\e[100m"
function banner {
clear
echo -e ${GR}"
	████████╗░█████╗░██████╗░
	╚══██╔══╝██╔══██╗██╔══██╗
	 ░░██║░░░██║░░██║██████╔╝
	░░░██║░░░██║░░██║██╔══██╗
	░░░██║░░░╚█████╔╝██║░░██║
${R}	   ╚═╝    ╚════╝ ╚═╝  ╚═╝"
echo -e "	   ${W}${LRED}::The Onion Router::"${W}
echo -e "    ${W}${DGRAY}.:Anonimíza tus procesos hacking:."${W}
echo
}
banner
echo -e ${R}"╭───────────────────────────────╮
│ ${W}Presiona${R} ENTER ${W}Para continuar${R} │
╰───────────────────────────────╯
"
read enter
function deps {
echo -e ${R}"      ╭─────────────────────────╮
      │ ${W}Instalando dependencias${R} │
      ╰─────────────────────────╯
${W}"
sleep 1
}
banner
deps
echo -e ${R}"╭────────────────╮
│ ${W}Instalando tor${R} │
╰────────────────╯
${W}"
sleep 1
	yes|pkg install tor
banner
deps
echo -e ${R}"╭────────────────╮
│ ${W}Instalando w3m${R} │
╰────────────────╯
${W}"
sleep 1
	yes|pkg install w3m
banner
deps
echo -e ${R}"╭─────────────────────╮
│ ${W}Instalando torsocks${R} │
╰─────────────────────╯
${W}"
sleep 1
	yes|pkg install torsocks

banner
deps
echo -e ${R}"╭───────────────────────────╮
│ ${W}Instalando proxychains-ng${R} │
╰───────────────────────────╯
${W}"
sleep 1
	yes|pkg install proxychains-ng
banner
# Mv files
cp $HOME/TOR-4-0-4/tor-help $PREFIX/bin
chmod 777 $PREFIX/bin/tor-help
cp $HOME/TOR-4-0-4/infomyip $PREFIX/bin
chmod 777 $PREFIX/bin/infomyip
cp $HOME/TOR-4-0-4/iptor $PREFIX/bin
chmod 777 $PREFIX/bin/iptor
cp $HOME/TOR-4-0-4/pubip $PREFIX/bin
chmod 777 $PREFIX/bin/pubip
cp $HOME/TOR-4-0-4/infoip $PREFIX/bin
chmod 777 $PREFIX/bin/infoip
cp $HOME/TOR-4-0-4/ipch $PREFIX/bin
chmod 777 $PREFIX/bin/ipch
cp $HOME/TOR-4-0-4/privip $PREFIX/bin
sleep 1
rm -rf ~/TOR-4-0-4
echo -e ${R}"    ╭─────────────────────────╮
    │ ${W}Dependencias instaladas ${R}│
    ╰─────────────────────────╯"
echo
