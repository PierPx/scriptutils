#!/bin/bash

#   :copyright: (c) 2018 zpeller
#   :license: GNU GPL v3, see LICENSE for more details.

#BASEDIR=/home/zpeller/xxxxxxx
#INPUTFILE=$BASEDIR/file.xxx.zzz
#LOGFILE=/tmp/`basename $0`.log.$$.$RANDOM


###################################################################
# no configurable parameters below
#

function error_exit {
	[ ! -z "$*" ] && echo "Error: $*" 
	echo "Usage: `basename $0` <arg1> [<arg2>]"
	exit 1
}

#[ -z "$3" -a ! -z "$4" ] && error_exit "bad arguments"
#[ "$#" -ne 4 ] && error_exit "bad arguments"
#[ "$#" -lt 3 ] && error_exit "too few arguments"

rm -f $LOGFILE









rm -f $LOGFILE
exit 0

