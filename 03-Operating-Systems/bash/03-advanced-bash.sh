#!/bin/bash

call=test

function main() {
    echo $0
    echo "first param $1"
    echo "second param $2"

    test
    test2

    if [[ $call == "test" ]];then
        test
    fi
}

function test() {
    echo "test"
}

function test2() {
    echo "test2"
}

main $@ # pass all params to function main

# Task
# decide based on parameter if function test or test2 is called

# Task
# list all provided params to this script

# Task
# check if parameter is present and ouput error message, if not existing