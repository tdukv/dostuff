#!/bin/bash

# TODO:
# Fancy exit messages
# Add more verbs/nouns
# Waiting animation(s)
# Colors
# Add TODO items

verbs=$(cat <<EOF
Interjecting
Compiling
Defragmenting
Connecting to
Downloading
EOF
)


nouns=$(cat <<EOF
the Matrix
more RAM
GNU/Linux
ur mum
Skynet
EOF
)


scroll () {
    text="$*"
    length="${#text}"
    for (( sym = 0 ; sym <= length ; sym++ )); do
       printf "%s" "${text:$sym:1}"
       sleep 0.03
    done
}

while : ; do
    verb=$(printf "%s" "$verbs" | shuf -n 1)
    noun=$(printf "%s" "$nouns" | shuf -n 1)
    scroll "$verb $noun..."
    printf "\n"
    sleep $[ ( $RANDOM % 5 ) + 1 ]s
done
