#!/usr/bin/env bash
no_of_dir=$(ls -1 | wc -l)

function input {
    echo -e "\nCan you guess how many files are in the current directory?"
    read guess
}

input

while [[ $guess -ne $no_of_dir ]]
do
    if [[ $guess -lt $no_of_dir ]]
    then
        echo "Too low , Try again."
    else
        echo "Too high , Try again."
    fi
    input
done

echo "Well done! It is the correct answer."