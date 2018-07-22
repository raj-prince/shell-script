#!/usr/bin/env bash

VALID=0

while [ $VALID -eq 0 ]
do
    read -p "Please enter your namen and age:" name age

    if [[ ( -z $name ) || ( -z $age) ]]
    then
        echo "Not enough parameter passed."
        continue
    elif [[ ! $name =~ ^[A-Za-z]+$ ]]
    then
        echo "Name contains non-alpha character."
        continue
    elif [[ ! $age =~ ^[0-9]+$ ]]
    then
        echo "Age contains non-digit character."
        continue
    fi
    VALID=1
done

echo "Name: $name and Age: $age"
exit 0
