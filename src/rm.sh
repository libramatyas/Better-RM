#!/bin/bash

if [$1 = ""];
then
    echo "You have to put file or a folder as a first argument for this to work!"
    exit
else
    echo "1"
fi

TARG=$(date +"%d-%m-%Y %H:%M:%S [%N]")
DIR=/tmp/brm
if [ -d "$DIR" ];
then
    mkdir /tmp/brm/"$TARG"
    while (( "$#" )); do
        mv $1 /tmp/brm/"$TARG"
        shift
    done
    echo "Removed the files into a folder called $TARG at $DIR"
else
	mkdir /tmp/brm/
    mkdir /tmp/brm/"$TARG"
    while (( "$#" )); do
        mv $1 /tmp/brm/"$TARG"
        shift 
    done
    echo "Removed the files into a folder called $TARG at $DIR"
fi