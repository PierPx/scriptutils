#!/bin/bash
#
# Copyright (c) 2018 Zoltan Peller (zpeller@zzsoft.hu)
# License GNU GPL v3, see LICENSE for more details.
#
# Description
#
# TODO

#set -x 

#BASEDIR=/home/user/xxxxxxx
#PARAMFILE=$BASEDIR/file.xxx.zzz
#LOGFILE=/tmp/`basename $0`.log.$$.$RANDOM

###################################################################
# no configurable parameters below
#

function error_exit {
	[ ! -z "$1" ] && echo "Error: $*" >&2
	echo "Usage: `basename $0` -a <opta> [-b optb] <input_file1> [input_file2] [...]" >&2
	exit 1
}
	
# File name
readonly PROGNAME=$(basename $0)
# File name, without the extension
readonly PROGBASENAME=${PROGNAME%.*}
# File directory
readonly PROGDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# Arguments
readonly ARGS="$@"
# Arguments number
readonly ARGNUM="$#"

case `basename $0` in
	prog1) 
		OPTX="option1"
		;;
	prog2) 
		OPTX="option2"
		;;
	*)
		error_exit "Can't determine 'OPTX' from filename"
		;;
esac

while [ "$#" -gt 0 ]
do
	case "$1" in
		-h|--help) 
				error_exit;;
		-a|--opta)
				opta="$2"; shift;;
		-b|--optb)
				optb="$2"; shift ;;
#		-i|--infile)
#				shift; break ;;
		-*) 	error_exit "Invalid option '$1'" ;;
		*)		# the input files
				break;;
	esac
	shift
done

[ "$#" -eq 0 ] && error_exit "Missing input files"

for i in "$@"
do 
	echo $i

# Process args (files?)


done
