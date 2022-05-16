#!/usr/bin/env bash

#generate a value (1 or 0) using modulo operator
rightValue=$(($RANDOM % 2))

echo -n "Guess the number(1 or 0): "
read givenValue


while [[ $givenValue == 0 || $givenValue == 1 ]]; do

        if [[ $givenValue == $rightValue ]]; then
            echo "it's the right answer! "
        else
            echo "Wrong answer!!! "
        fi

        rightValue=$(($RANDOM % 2))

        echo -n "Guess the number again (1 or 0), press any other key to exit: "
        read givenValue

        if [[ $givenValue != 0 && $givenValue != 1 ]]; then 
                exit 0
        else
            continue
        fi
done


