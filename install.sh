#!/bin/bash
echo "Starting Installation!"


## Create a trash for BRM
DIR=/tmp/brm
if [ -d "$DIR" ];
then
    #When is
    echo "0"
else
    #When dir is missing
    mkdir /tmp/brm/
    echo "Created file trash at /tmp/brm"
fi

echo "1"
echo ""
echo "Installing Scripts..."
echo ""
sudo cp src/rm.sh /usr/bin/brm -f
echo "done installing rm"
sudo cp src/cleartrash.sh /usr/bin/ct -f
echo "done installing cleaner script"
echo ""
echo "Installation Done!"
