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
    mv $1 /tmp/brm/"$TARG"
else
	mkdir /tmp/brm/
    mkdir /tmp/brm/"$TARG"
    mv $1 /tmp/brm/"$TARG"
fi
