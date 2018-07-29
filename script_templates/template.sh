#!/bin/bash

#   :copyright: (c) 2018 zpeller
#   :license: GNU GPL v3, see LICENSE for more details.

#BASEDIR=/home/zpeller/xxxxxxx
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
		ARGX="argX"
		;;
	prog2) 
		ARGX="argY"
		;;
	*)
		error_exit "Can't determine $ARGX type from filename"
		;;
esac

#set -x 
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
		-*) 	error_exit "Invalid option '$1'. Use --help to see the valid options" ;;
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
