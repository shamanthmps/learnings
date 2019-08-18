#!/bin/bash

echo "Welcome Mr.Shamanth"
FIRSTLINE=$(head -n 1 source/changelog.md)
read -a SPLITFIRSTLINE <<< $FIRSTLINE
VALUE=${SPLITFIRSTLINE[1]}

echo "Do you want to make the changes to the version!! (Enter "1" for YES, "0" for NO)"
read VERSIONCONTINUE

if [ $VERSIONCONTINUE -eq "1" ]; then
 echo "OK"
else
 echo "Please come back when you are ready."
fi

if [ $FILENAME -eq "source/secretinfo.md" ]; then
 echo "$FILENAME is not being copied"
else 
 echo "$FILENAME is being copied"
 cp $FILENAME build/.
fi

cd build
# we'll add more code here later
cd ..

echo "Build version $VERSION contains: "
ls
