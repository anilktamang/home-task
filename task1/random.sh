#!/bin/bash

NUMBERS=10

# Exit on error.
set -e

# Function to display the usage info and exit.
usage() {
	echo "Usuage: ${0} [-n NUMBERS] [-vh]" >&2
	echo 'Generates n random numbers.' >&2
	echo ' -n NUMBER   Allows user to provide the numbers of random number.' >&2
	echo ' -v          Increase verbosity.'  >&2
  echo ' -h          Shows this help message.'  >&2
	exit 1
}

log(){
	local MESSAGE="${@}"
	if [[ "${VERBOSE}" = 'true' ]]
	then
		echo "${MESSAGE}"
	fi
}

# Parse the options.
while getopts n:vh OPTION
do
	case ${OPTION} in
	n)
            NUMBERS="${OPTARG}"
            ;;
	v)
            VERBOSE='true'
            log 'Verbose mode on.'
            ;;
   h)
            usage
            ;;
	?)
            usage
            ;;
	esac
done

log "Generating ${NUMBERS} random numbers."

numbers=($(shuf -i 1-${NUMBERS}))
echo ${numbers[@]}
