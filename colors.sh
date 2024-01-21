#!/bin/bash

# Reset
COLOR_OFF='\033[0m' # Text Reset

# Color Codes
COLOR_CODE_BLACK='30'
COLOR_CODE_RED='31'
COLOR_CODE_GREEN='32'
COLOR_CODE_YELLOW='33'
COLOR_CODE_BLUE='34'
COLOR_CODE_MAGENTA='35'
COLOR_CODE_CYAN='36'
COLOR_CODE_WHITE='37'

# Additional Color Codes
COLOR_CODE_DARK_GREY='90'
COLOR_CODE_LIGHT_RED='91'
COLOR_CODE_LIGHT_GREEN='92'
COLOR_CODE_LIGHT_YELLOW='93'
COLOR_CODE_LIGHT_BLUE='94'
COLOR_CODE_LIGHT_PURPLE='95'
COLOR_CODE_TURQUOISE='96'
COLOR_CODE_BRIGHT_WHITE='97'

# Colors
COLOR_BLACK="\033[0;${COLOR_CODE_BLACK}m"
COLOR_RED="\033[0;${COLOR_CODE_RED}m"
COLOR_GREEN="\033[0;${COLOR_CODE_GREEN}m"
COLOR_YELLOW="\033[0;${COLOR_CODE_YELLOW}m"
COLOR_BLUE="\033[0;${COLOR_CODE_BLUE}m"
COLOR_MAGENTA="\033[0;${COLOR_CODE_MAGENTA}m"
COLOR_CYAN="\033[0;${COLOR_CODE_CYAN}m"
COLOR_WHITE="\033[0;${COLOR_CODE_WHITE}m"
COLOR_DARK_GREY="\033[0;${COLOR_CODE_DARK_GREY}m"
COLOR_LIGHT_RED="\033[0;${COLOR_CODE_LIGHT_RED}m"
COLOR_LIGHT_GREEN="\033[0;${COLOR_CODE_LIGHT_GREEN}m"
COLOR_LIGHT_YELLOW="\033[0;${COLOR_CODE_LIGHT_YELLOW}m"
COLOR_LIGHT_BLUE="\033[0;${COLOR_CODE_LIGHT_BLUE}m"
COLOR_LIGHT_PURPLE="\033[0;${COLOR_CODE_LIGHT_PURPLE}m"
COLOR_TURQUOISE="\033[0;${COLOR_CODE_TURQUOISE}m"
COLOR_BRIGHT_WHITE="\033[0;${COLOR_CODE_BRIGHT_WHITE}m"

# Background Codes
BG_CODE_BLACK='40'
BG_CODE_RED='41'
BG_CODE_GREEN='42'
BG_CODE_YELLOW='43'
BG_CODE_BLUE='44'
BG_CODE_MAGENTA='45'
BG_CODE_CYAN='46'
BG_CODE_WHITE='47'

# Additional Background Codes
BG_CODE_DARK_GREY='100'
BG_CODE_LIGHT_RED='101'
BG_CODE_LIGHT_GREEN='102'
BG_CODE_LIGHT_YELLOW='103'
BG_CODE_LIGHT_BLUE='104'
BG_CODE_LIGHT_PURPLE='105'
BG_CODE_TURQUOISE='106'
BG_CODE_BRIGHT_WHITE='107'

# Background
BG_BLACK="\033[${BG_CODE_BLACK}m"
BG_RED="\033[${BG_CODE_RED}m"
BG_GREEN="\033[${BG_CODE_GREEN}m"
BG_YELLOW="\033[${BG_CODE_YELLOW}m"
BG_BLUE="\033[${BG_CODE_BLUE}m"
BG_MAGENTA="\033[${BG_CODE_MAGENTA}m"
BG_CYAN="\033[${BG_CODE_CYAN}m"
BG_WHITE="\033[${BG_CODE_WHITE}m"
BG_DARK_GREY="\033[0;${BG_CODE_DARK_GREY}m"
BG_LIGHT_RED="\033[0;${BG_CODE_LIGHT_RED}m"
BG_LIGHT_GREEN="\033[0;${BG_CODE_LIGHT_GREEN}m"
BG_LIGHT_YELLOW="\033[0;${BG_CODE_LIGHT_YELLOW}m"
BG_LIGHT_BLUE="\033[0;${BG_CODE_LIGHT_BLUE}m"
BG_LIGHT_PURPLE="\033[10;${BG_CODE_LIGHT_PURPLE}m"
BG_TURQUOISE="\033[0;${BG_CODE_TURQUOISE}m"
BG_BRIGHT_WHITE="\033[0;${BG_CODE_BRIGHT_WHITE}m"

# Displaying colors
function list-colors() {
	echo -e "${COLOR_BLACK}Black ($COLOR_CODE_BLACK) ${BG_BLACK}                          ${COLOR_OFF} BG Black ($BG_CODE_BLACK)"
	echo -e "${COLOR_RED}Red ($COLOR_CODE_RED) ${BG_RED}                      ${COLOR_OFF} BG Red ($BG_CODE_RED)"
	echo -e "${COLOR_GREEN}Green ($COLOR_CODE_GREEN) ${BG_GREEN}                          ${COLOR_OFF} BG Green ($BG_CODE_GREEN)"
	echo -e "${COLOR_YELLOW}Yellow ($COLOR_CODE_YELLOW) ${BG_YELLOW}                            ${COLOR_OFF} BG Yellow ($BG_CODE_YELLOW)"
	echo -e "${COLOR_BLUE}Blue ($COLOR_CODE_BLUE) ${BG_BLUE}                       ${COLOR_OFF} BG Blue ($BG_CODE_BLUE)"
	echo -e "${COLOR_MAGENTA}Magenta ($COLOR_CODE_MAGENTA) ${BG_MAGENTA}                             ${COLOR_OFF} BG Magenta ($BG_CODE_MAGENTA)"
	echo -e "${COLOR_CYAN}Cyan ($COLOR_CODE_CYAN) ${BG_CYAN}                       ${COLOR_OFF} BG Cyan ($BG_CODE_CYAN)"
	echo -e "${COLOR_WHITE}White ($COLOR_CODE_WHITE) ${BG_WHITE}                         ${COLOR_OFF} BG White ($BG_CODE_WHITE)"
	echo -e "${COLOR_DARK_GREY}Dark Grey ($COLOR_CODE_DARK_GREY) ${BG_DARK_GREY}                          ${COLOR_OFF} BG Dark Grey ($BG_CODE_DARK_GREY)"
	echo -e "${COLOR_LIGHT_RED}Light Red ($COLOR_CODE_LIGHT_RED) ${BG_LIGHT_RED}                      ${COLOR_OFF} BG Light Red ($BG_CODE_LIGHT_RED)"
	echo -e "${COLOR_LIGHT_GREEN}Light Green ($COLOR_CODE_LIGHT_GREEN) ${BG_LIGHT_GREEN}                          ${COLOR_OFF} BG Light Green ($BG_CODE_LIGHT_GREEN)"
	echo -e "${COLOR_LIGHT_YELLOW}Light Yellow ($COLOR_CODE_LIGHT_YELLOW) ${BG_LIGHT_YELLOW}                            ${COLOR_OFF} BG Light Yellow ($BG_CODE_LIGHT_YELLOW)"
	echo -e "${COLOR_LIGHT_BLUE}Light Blue ($COLOR_CODE_LIGHT_BLUE) ${BG_LIGHT_BLUE}                       ${COLOR_OFF} BG Light Blue ($BG_CODE_LIGHT_BLUE)"
	echo -e "${COLOR_LIGHT_PURPLE}Light Purple ($COLOR_CODE_LIGHT_PURPLE) ${BG_LIGHT_PURPLE}                             ${COLOR_OFF} BG Light Purple ($BG_CODE_LIGHT_PURPLE)"
	echo -e "${COLOR_TURQUOISE}Turquoise ($COLOR_CODE_TURQUOISE) ${BG_TURQUOISE}                       ${COLOR_OFF} BG Turquoise ($BG_CODE_TURQUOISE)"
	echo -e "${COLOR_BRIGHT_WHITE}Bright white ($COLOR_CODE_BRIGHT_WHITE) ${BG_BRIGHT_WHITE}                         ${COLOR_OFF} BG Bright White ($BG_CODE_BRIGHT_WHITE)"
}
