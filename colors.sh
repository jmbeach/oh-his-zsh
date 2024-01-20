#!/bin/bash

# Reset
Color_Off='\033[0m' # Text Reset

# Regular Colors
BLACK='\033[0;30m'  # Black
RED='\033[0;31m'    # RED
GREEN='\033[0;32m'  # GREEN
YELLOW='\033[0;33m' # YELLOW
BLUE='\033[0;34m'   # BLUE
PURPLE='\033[0;35m' # PURPLE
CYAN='\033[0;36m'   # CYAN
WHITE='\033[0;37m'  # WHITE

# Bold
BBLACK='\033[1;30m'  # Black
BRED='\033[1;31m'    # RED
BGREEN='\033[1;32m'  # GREEN
BYELLOW='\033[1;33m' # YELLOW
BBLUE='\033[1;34m'   # BLUE
BPURPLE='\033[1;35m' # PURPLE
BCYAN='\033[1;36m'   # CYAN
BWHITE='\033[1;37m'  # WHITE

# Underline
UBLACK='\033[4;30m'  # Black
URED='\033[4;31m'    # RED
UGREEN='\033[4;32m'  # GREEN
UYELLOW='\033[4;33m' # YELLOW
UBLUE='\033[4;34m'   # BLUE
UPURPLE='\033[4;35m' # PURPLE
UCYAN='\033[4;36m'   # CYAN
UWHITE='\033[4;37m'  # WHITE

# Background
BG_BLACK='\033[40m'  # Black
BG_RED='\033[41m'    # RED
BG_GREEN='\033[42m'  # GREEN
BG_YELLOW='\033[43m' # YELLOW
BG_BLUE='\033[44m'   # BLUE
BG_PURPLE='\033[45m' # PURPLE
BG_CYAN='\033[46m'   # CYAN
BG_WHITE='\033[47m'  # WHITE

# High Intensity
IBLACK='\033[0;90m'  # Black
IRED='\033[0;91m'    # RED
IGREEN='\033[0;92m'  # GREEN
IYELLOW='\033[0;93m' # YELLOW
IBLUE='\033[0;94m'   # BLUE
IPURPLE='\033[0;95m' # PURPLE
ICYAN='\033[0;96m'   # CYAN
IWHITE='\033[0;97m'  # WHITE

# Bold High Intensity
BIBLACK='\033[1;90m'  # Black
BIRED='\033[1;91m'    # RED
BIGREEN='\033[1;92m'  # GREEN
BIYELLOW='\033[1;93m' # YELLOW
BIBLUE='\033[1;94m'   # BLUE
BIPURPLE='\033[1;95m' # PURPLE
BICYAN='\033[1;96m'   # CYAN
BIWHITE='\033[1;97m'  # WHITE

# High Intensity backgrounds
BG_IBLACK='\033[0;100m'  # Black
BG_IRED='\033[0;101m'    # RED
BG_IGREEN='\033[0;102m'  # GREEN
BG_IYELLOW='\033[0;103m' # YELLOW
BG_IBLUE='\033[0;104m'   # BLUE
BG_IPURPLE='\033[10;95m' # PURPLE
BG_ICYAN='\033[0;106m'   # CYAN
BG_IWHITE='\033[0;107m'  # WHITE

# Displaying colors
function list-colors() {
	echo -e "${BLACK}Black ${BG_Black}${WHITE}Black${Color_Off}"
	echo -e "${RED}RED${Color_Off}"
	echo -e "${GREEN}GREEN${Color_Off}"
	echo -e "${YELLOW}YELLOW${Color_Off}"
	echo -e "${BLUE}BLUE${Color_Off}"
	echo -e "${PURPLE}PURPLE${Color_Off}"
	echo -e "${CYAN}CYAN${Color_Off}"
	echo -e "${WHITE}WHITE${Color_Off}"
	echo -e "${BBLACK}Black${Color_Off}"
	echo -e "${BRED}Bold RED${Color_Off}"
	echo -e "${BGREEN}Bold GREEN${Color_Off}"
	echo -e "${BYELLOW}Bold YELLOW${Color_Off}"
	echo -e "${BBLUE}Bold BLUE${Color_Off}"
	echo -e "${BPURPLE}Bold PURPLE${Color_Off}"
	echo -e "${BCYAN}Bold CYAN${Color_Off}"
	echo -e "${BWHITE}Bold WHITE${Color_Off}"
}
