#!/usr/bin/env bash

function set_variables() {
    # only visible to local level
    declare x=10
    y=11
}

x=5
y=3

echo "x= $x and y = $y" # 5, 3

set_variables

echo "x= $x and y = $y" # 5, 11

function test_integer_variable() {
    declare -i x
    # this value will be 0 in case of non-integer value.
    read -p "Please enter a number: " x
    echo "X: $x"
}

test_integer_variable

function test_readonly_variable() {
    # can't reassign a value.
    declare -r x=39
    echo "X: $x"
}

test_readonly_variable