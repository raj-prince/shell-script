#!/usr/bin/env bash

# ./read_file.sh data.txt

COUNT=0

# IFS stands of Internal Field Separator: used to define character or characters
# to separate a pattern into tokens.

while IFS='' read -r LINE
do
    echo "Line No. $COUNT: $LINE"
    ((COUNT++))
done < $1