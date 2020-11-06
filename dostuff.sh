#!/bin/bash

scroll () {
    text="$*"
    length="${#text}"
    for (( sym = 0 ; sym <= length ; sym++ )); do
       printf "%s" "${text:$sym:1}"
       sleep 0.03
    done
}

scroll "$@"
printf "\n"
