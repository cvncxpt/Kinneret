#!/data/data/com.termux/files/usr/bin/bash

# # -----ASNI COLORS-
DEF="\e[39m"
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
LGRAY="\e[37m"
DGRAY="\e[90m"
LRED="\e[91m"
LGREEN="\e[92m"
LYELLOW="\e[93m"
LBLUE="\e[94m"
LMAGENTA="\e[95m"
LCYAN="\e[96m"
WHITE="\e[97m"

clear

# # sets
license="$(echo c3ViVG9LYXlhT25UVGJydWhoCg== | base64 --decode)"

textBanner() {
echo -e "    ╔═══════════════════════════════════════════════════════════╗" |lolcat -p 8
echo -e "   ${WHITE}██░░░██░██░███░░░░██░███░░░░██░███████░██████░░███████░████████"
echo -e "   ${WHITE}██░░██░░██░████░░░██░████░░░██░██░░░░░░██░░░██░██░░░░░░░░░██░░░     ${LRED}Made by"
echo -e "   ${WHITE}█████░░░██░██░██░░██░██░██░░██░█████░░░██████░░█████░░░░░░██░░░      ${LYELLOW}kaya"
echo -e "   ${WHITE}██░░██░░██░██░░██░██░██░░██░██░██░░░░░░██░░░██░██░░░░░░░░░██░░░"
echo -e "   ${WHITE}██░░░██░██░██░░░████░██░░░████░███████░██░░░██░███████░░░░██░░░"
echo -e "    ╚═══════════════════════════════════════════════════════════╝" |lolcat -p 8
}

gunBanner() {
echo -e "    ${DGRAY}                           ______"
echo -e "    ${DGRAY}        |\_______________ (_____\\\\\______________"
echo -e "   ${DGRAY}HH======#H###############H#######################"
echo -e "    ${DGRAY}        ' ~\"\"\"\"\"\"\"\"\"\"\"\"\"\"\`##(_))#H\"\"\"\"\"Y########"
echo -e "    ${DGRAY}                          ))    \#H\      \`\"Y###"
echo -e "    ${DGRAY}                          \"      }#H)"
}

command -v python3 > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed PY3 installing it....." && apt install python3 > /dev/null 2>&1;}
command -v python2 > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed PY2 installing it....." && apt install python2 > /dev/null 2>&1;}
command -v ruby > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed RUBY installing it....." && apt install ruby > /dev/null 2>&1;}
command -v lolcat > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed LOLCAT installing it....." && gem install lolcat > /dev/null 2>&1;}
command -v curl > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed CURL installing it....." && apt install wget > /dev/null 2>&1;}
command -v coreutils > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed COREUTILS installing it....." && apt install coreutils > /dev/null 2>&1;}
command -v pv > /dev/null 2>&1 || { echo -e >&2 "\e[94m➟ \e[92mNeed PV installing it....." && apt install pv > /dev/null 2>&1;}
pip2 install socks > /dev/null 2>&1
pip2 install terminal > /dev/null 2>&1

target="None"

lcsMenu() {
clear
echo
gunBanner
echo -e " ${LRED}NOTE: ${WHITE}to get the license decrypted you need to write me on discord ~ kaya#7272" | pv -qL 20
echo
echo -ne " ${LCYAN}Enter Licensekey ${LYELLOW}#> ${DEF}"
read lcs

if [[ "$lcs" == "$license" ]]
then
main
else
echo
echo -e " ${RED}Invalid License haha lol..."
sleep 4
lcsMenu
fi
}

main() {
clear
echo
textBanner
echo
echo -e " ${RED}╔═════════════════════════════════╗"
echo -e " ${RED}║ ${LCYAN}-(1)-${BLUE}Enter Target               ${RED}║ ${WHITE}Target = ${target}"
echo -e " ${RED}║ ${LCYAN}-(2)-${BLUE}Start DDoS Attack          ${RED}║"
echo -e " ${RED}║ ${LCYAN}-(3)-${BLUE}Help                       ${RED}║"
echo -e " ${RED}║ ${LCYAN}-(4)-${BLUE}Exit                       ${RED}║"
echo -e " ${RED}╚═════════════════════════════════╝"
echo
echo -ne "  ${LYELLOW}kin\script\menu # ${WHITE}"
read main
if [[ "$main" == "1" ]]
then 
echo
echo -e " ${DGRAY}Enter IP or WEB ADDRESS"
echo -ne " ${RED}> ${WHITE}"
read vct
target="${vct}"
echo
echo -e " ${RED}Targed Set."
echo "Set Target: ${target}" >> log.txt
sleep 4
main
elif [[ "$main" == "2" ]]
then
echo
echo -e " ${RED}Starting Attack (NOTE: restart Termux to stop the Attack)"
if [[ "$target" == "None" ]]
then 
echo
echo -e "${RED}No target set"
sleep 3
main
fi
python2 tddos.py ${target}
elif [[ "$main" == "3" ]]
then 
echo
echo -e " no sorry"
sleep 3
main
elif [[ "$main" == "4" ]]
then
exit
else
echo -e " ${RED}Error"
sleep 3
main
fi
}

lcsMenu
