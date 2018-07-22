#!/usr/bin/env bash

function prime_testing() {
    declare limit=$(expr $1 - 1)
    for z in $(seq 2 $limit)
    do
        # expression command is to evaluate the expression.
        if [ $(expr $1 % $z) -eq 0 ]
        then
            echo "Number $num is not prime."
            return
        fi
    done
    echo "Number $num is prime."
}

test="yes"

while [ $test = "yes" ]
do
    declare num
    read -p "Please enter the number: " num
    prime_testing "$num"
    read -p "Do you wanna continue? [yes/no]: " test
done