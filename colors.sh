#!/bin/bash

# Reset
Color_Off='\033[0m' # Text Reset

# Regular Colors
Black='\033[0;30m'  # Black
Red='\033[0;31m'    # Red
Green='\033[0;32m'  # Green
Yellow='\033[0;33m' # Yellow
Blue='\033[0;34m'   # Blue
Purple='\033[0;35m' # Purple
Cyan='\033[0;36m'   # Cyan
White='\033[0;37m'  # White

# Bold
BBlack='\033[1;30m'  # Black
BRed='\033[1;31m'    # Red
BGreen='\033[1;32m'  # Green
BYellow='\033[1;33m' # Yellow
BBlue='\033[1;34m'   # Blue
BPurple='\033[1;35m' # Purple
BCyan='\033[1;36m'   # Cyan
BWhite='\033[1;37m'  # White

# Underline
UBlack='\033[4;30m'  # Black
URed='\033[4;31m'    # Red
UGreen='\033[4;32m'  # Green
UYellow='\033[4;33m' # Yellow
UBlue='\033[4;34m'   # Blue
UPurple='\033[4;35m' # Purple
UCyan='\033[4;36m'   # Cyan
UWhite='\033[4;37m'  # White

# Background
BG_Black='\033[40m'  # Black
BG_Red='\033[41m'    # Red
BG_Green='\033[42m'  # Green
BG_Yellow='\033[43m' # Yellow
BG_Blue='\033[44m'   # Blue
BG_Purple='\033[45m' # Purple
BG_Cyan='\033[46m'   # Cyan
BG_White='\033[47m'  # White

# High Intensity
IBlack='\033[0;90m'  # Black
IRed='\033[0;91m'    # Red
IGreen='\033[0;92m'  # Green
IYellow='\033[0;93m' # Yellow
IBlue='\033[0;94m'   # Blue
IPurple='\033[0;95m' # Purple
ICyan='\033[0;96m'   # Cyan
IWhite='\033[0;97m'  # White

# Bold High Intensity
BIBlack='\033[1;90m'  # Black
BIRed='\033[1;91m'    # Red
BIGreen='\033[1;92m'  # Green
BIYellow='\033[1;93m' # Yellow
BIBlue='\033[1;94m'   # Blue
BIPurple='\033[1;95m' # Purple
BICyan='\033[1;96m'   # Cyan
BIWhite='\033[1;97m'  # White

# High Intensity backgrounds
BG_IBlack='\033[0;100m'  # Black
BG_IRed='\033[0;101m'    # Red
BG_IGreen='\033[0;102m'  # Green
BG_IYellow='\033[0;103m' # Yellow
BG_IBlue='\033[0;104m'   # Blue
BG_IPurple='\033[10;95m' # Purple
BG_ICyan='\033[0;106m'   # Cyan
BG_IWhite='\033[0;107m'  # White

# Displaying colors
function list-colors() {
	echo -e "${Black}Black${Color_Off}${BG_BLACK}Black${Color_Off}"
	echo -e "${Red}Red${Color_Off}"
	echo -e "${Green}Green${Color_Off}"
	echo -e "${Yellow}Yellow${Color_Off}"
	echo -e "${Blue}Blue${Color_Off}"
	echo -e "${Purple}Purple${Color_Off}"
	echo -e "${Cyan}Cyan${Color_Off}"
	echo -e "${White}White${Color_Off}"
	echo -e "${BBlack}Black${Color_Off}"
	echo -e "${BRed}Bold Red${Color_Off}"
	echo -e "${BGreen}Bold Green${Color_Off}"
	echo -e "${BYellow}Bold Yellow${Color_Off}"
	echo -e "${BBlue}Bold Blue${Color_Off}"
	echo -e "${BPurple}Bold Purple${Color_Off}"
	echo -e "${BCyan}Bold Cyan${Color_Off}"
	echo -e "${BWhite}Bold White${Color_Off}"
}
