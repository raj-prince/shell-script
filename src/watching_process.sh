#!/usr/bin/env bash

# ./watching_process.sh <PID>
status=0

if [ -z $1 ]
then
    echo "Please supply the process ID!"
    exit 1
fi

while [ $status -eq 0 ]
do
    # redirect the output to null device, i.e. nowhere
    ps $1 > /dev/null
    status=$?
done
