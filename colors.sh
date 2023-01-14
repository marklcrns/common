#!/usr/bin/env bash

################################################################################
#
# Predefined ANSI color codes for colorful output strings.
#
# WARNING: This is not an executable script. This script is meant to be used as
# a utility by sourcing this script for efficient bash script writing.
#
################################################################################
# Author : Mark Lucernas <https://github.com/marklcrns>
# Date   : 2020-08-13
################################################################################

if [ "${0##*/}" == "${BASH_SOURCE[0]##*/}" ]; then
	echo "WARNING: $(realpath -s $0) is not meant to be executed directly!" >&2
	echo "Use this script only by sourcing it." >&2
	exit 1
fi

# Switch Header guard
[[ -z "${ENABLE_COLORS+x}" ]] && ENABLE_COLORS=false
$ENABLE_COLORS && [[ -n "${COLOR_ANSI_CODE_PREFIX+x}" ]] &&
	return 0

if $ENABLE_COLORS; then
	COLOR_ANSI_CODE_PREFIX='\033'

	# Regular Colors
	COLOR_BLACK="${COLOR_ANSI_CODE_PREFIX}[0;30m"
	COLOR_RED="${COLOR_ANSI_CODE_PREFIX}[0;31m"
	COLOR_GREEN="${COLOR_ANSI_CODE_PREFIX}[0;32m"
	COLOR_YELLOW="${COLOR_ANSI_CODE_PREFIX}[0;33m"
	COLOR_BLUE="${COLOR_ANSI_CODE_PREFIX}[0;34m"
	COLOR_PURPLE="${COLOR_ANSI_CODE_PREFIX}[0;35m"
	COLOR_CYAN="${COLOR_ANSI_CODE_PREFIX}[0;36m"
	COLOR_WHITE="${COLOR_ANSI_CODE_PREFIX}[0;37m"

	# Bold
	COLOR_BO="${COLOR_ANSI_CODE_PREFIX}[1m"
	COLOR_BO_NC="${COLOR_ANSI_CODE_PREFIX}[0;1m"
	COLOR_BO_BLACK="${COLOR_ANSI_CODE_PREFIX}[1;30m"
	COLOR_BO_RED="${COLOR_ANSI_CODE_PREFIX}[1;31m"
	COLOR_BO_GREEN="${COLOR_ANSI_CODE_PREFIX}[1;32m"
	COLOR_BO_YELLOW="${COLOR_ANSI_CODE_PREFIX}[1;33m"
	COLOR_BO_BLUE="${COLOR_ANSI_CODE_PREFIX}[1;34m"
	COLOR_BO_PURPLE="${COLOR_ANSI_CODE_PREFIX}[1;35m"
	COLOR_BO_CYAN="${COLOR_ANSI_CODE_PREFIX}[1;36m"
	COLOR_BO_WHITE="${COLOR_ANSI_CODE_PREFIX}[1;37m"

	# Underline
	COLOR_UL="${COLOR_ANSI_CODE_PREFIX}[4m"
	COLOR_UL_NC="${COLOR_ANSI_CODE_PREFIX}[0;4m"
	COLOR_UL_BLACK="${COLOR_ANSI_CODE_PREFIX}[4;30m"
	COLOR_UL_RED="${COLOR_ANSI_CODE_PREFIX}[4;31m"
	COLOR_UL_GREEN="${COLOR_ANSI_CODE_PREFIX}[4;32m"
	COLOR_UL_YELLOW="${COLOR_ANSI_CODE_PREFIX}[4;33m"
	COLOR_UL_BLUE="${COLOR_ANSI_CODE_PREFIX}[4;34m"
	COLOR_UL_PURPLE="${COLOR_ANSI_CODE_PREFIX}[4;35m"
	COLOR_UL_CYAN="${COLOR_ANSI_CODE_PREFIX}[4;36m"
	COLOR_UL_WHITE="${COLOR_ANSI_CODE_PREFIX}[4;37m"

	# Background
	COLOR_BG_BLACK="${COLOR_ANSI_CODE_PREFIX}[40m"
	COLOR_BG_RED="${COLOR_ANSI_CODE_PREFIX}[41m"
	COLOR_BG_GREEN="${COLOR_ANSI_CODE_PREFIX}[42m"
	COLOR_BG_YELLOW="${COLOR_ANSI_CODE_PREFIX}[43m"
	COLOR_BG_BLUE="${COLOR_ANSI_CODE_PREFIX}[44m"
	COLOR_BG_PURPLE="${COLOR_ANSI_CODE_PREFIX}[45m"
	COLOR_BG_CYAN="${COLOR_ANSI_CODE_PREFIX}[46m"
	COLOR_BG_WHITE="${COLOR_ANSI_CODE_PREFIX}[47m"
	COLOR_BG_EXPAND="${COLOR_ANSI_CODE_PREFIX}[K"

	# High Intensty
	COLOR_HI_BLACK="${COLOR_ANSI_CODE_PREFIX}[0;90m" # Also gray
	COLOR_HI_RED="${COLOR_ANSI_CODE_PREFIX}[0;91m"
	COLOR_HI_GREEN="${COLOR_ANSI_CODE_PREFIX}[0;92m"
	COLOR_HI_YELLOW="${COLOR_ANSI_CODE_PREFIX}[0;93m"
	COLOR_HI_BLUE="${COLOR_ANSI_CODE_PREFIX}[0;94m"
	COLOR_HI_PURPLE="${COLOR_ANSI_CODE_PREFIX}[0;95m"
	COLOR_HI_CYAN="${COLOR_ANSI_CODE_PREFIX}[0;96m"
	COLOR_HI_WHITE="${COLOR_ANSI_CODE_PREFIX}[0;97m"

	# Bold High Intensty
	COLOR_BO_HI_BLACK="${COLOR_ANSI_CODE_PREFIX}[1;90m"
	COLOR_BO_HI_RED="${COLOR_ANSI_CODE_PREFIX}[1;91m"
	COLOR_BO_HI_GREEN="${COLOR_ANSI_CODE_PREFIX}[1;92m"
	COLOR_BO_HI_YELLOW="${COLOR_ANSI_CODE_PREFIX}[1;93m"
	COLOR_BO_HI_BLUE="${COLOR_ANSI_CODE_PREFIX}[1;94m"
	COLOR_BO_HI_PURPLE="${COLOR_ANSI_CODE_PREFIX}[1;95m"
	COLOR_BO_HI_CYAN="${COLOR_ANSI_CODE_PREFIX}[1;96m"
	COLOR_BO_HI_WHITE="${COLOR_ANSI_CODE_PREFIX}[1;97m"

	# High Intensty backgrounds
	COLOR_BG_HI_BLACK="${COLOR_ANSI_CODE_PREFIX}[0;100m"
	COLOR_BG_HI_RED="${COLOR_ANSI_CODE_PREFIX}[0;101m"
	COLOR_BG_HI_GREEN="${COLOR_ANSI_CODE_PREFIX}[0;102m"
	COLOR_BG_HI_YELLOW="${COLOR_ANSI_CODE_PREFIX}[0;103m"
	COLOR_BG_HI_BLUE="${COLOR_ANSI_CODE_PREFIX}[0;104m"
	COLOR_BG_HI_PURPLE="${COLOR_ANSI_CODE_PREFIX}[0;105m"
	COLOR_BG_HI_CYAN="${COLOR_ANSI_CODE_PREFIX}[0;106m"
	COLOR_BG_HI_WHITE="${COLOR_ANSI_CODE_PREFIX}[0;107m"

	# Reset to Default
	COLOR_NC="${COLOR_ANSI_CODE_PREFIX}[0m"

else

	COLOR_ANSI_CODE_PREFIX=""

	# Regular Colors
	COLOR_BLACK=""
	COLOR_RED=""
	COLOR_GREEN=""
	COLOR_YELLOW=""
	COLOR_BLUE=""
	COLOR_PURPLE=""
	COLOR_CYAN=""
	COLOR_WHITE=""

	# Bold
	COLOR_BO=""
	COLOR_BO_NC=""
	COLOR_BO_BLACK=""
	COLOR_BO_RED=""
	COLOR_BO_GREEN=""
	COLOR_BO_YELLOW=""
	COLOR_BO_BLUE=""
	COLOR_BO_PURPLE=""
	COLOR_BO_CYAN=""
	COLOR_BO_WHITE=""

	# Underline
	COLOR_UL=""
	COLOR_UL_NC=""
	COLOR_UL_BLACK=""
	COLOR_UL_RED=""
	COLOR_UL_GREEN=""
	COLOR_UL_YELLOW=""
	COLOR_UL_BLUE=""
	COLOR_UL_PURPLE=""
	COLOR_UL_CYAN=""
	COLOR_UL_WHITE=""

	# Background
	COLOR_BG_BLACK=""
	COLOR_BG_RED=""
	COLOR_BG_GREEN=""
	COLOR_BG_YELLOW=""
	COLOR_BG_BLUE=""
	COLOR_BG_PURPLE=""
	COLOR_BG_CYAN=""
	COLOR_BG_WHITE=""
	COLOR_BG_EXPAND=""

	# High Intensty
	COLOR_HI_BLACK=""
	COLOR_HI_RED=""
	COLOR_HI_GREEN=""
	COLOR_HI_YELLOW=""
	COLOR_HI_BLUE=""
	COLOR_HI_PURPLE=""
	COLOR_HI_CYAN=""
	COLOR_HI_WHITE=""

	# Bold High Intensty
	COLOR_BO_HI_BLACK=""
	COLOR_BO_HI_RED=""
	COLOR_BO_HI_GREEN=""
	COLOR_BO_HI_YELLOW=""
	COLOR_BO_HI_BLUE=""
	COLOR_BO_HI_PURPLE=""
	COLOR_BO_HI_CYAN=""
	COLOR_BO_HI_WHITE=""

	# High Intensty backgrounds
	COLOR_BG_HI_BLACK=""
	COLOR_BG_HI_RED=""
	COLOR_BG_HI_GREEN=""
	COLOR_BG_HI_YELLOW=""
	COLOR_BG_HI_BLUE=""
	COLOR_BG_HI_PURPLE=""
	COLOR_BG_HI_CYAN=""
	COLOR_BG_HI_WHITE=""

	# Reset to Default
	COLOR_NC=""
fi
