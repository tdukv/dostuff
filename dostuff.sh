#!/bin/bash

# TODO:
# More exit messages
# Add more verbs/nouns
# Waiting animation(s)
# Colors
# Add more TODO items

verbs=$(cat <<EOF
Interjecting
Compiling
Defragmenting
Connecting to
Downloading
Randomizing
Looping through
Inspecting
Uploading
Syncing
Booting
Rebooting
Decrypting
Debunking
Rebunking
Decentralizing
Standardizing
Hacking
Restoring
Crashing
Cracking
Demystifying
Assembling
Loading
Uninstalling
EOF
)


nouns=$(cat <<EOF
the Matrix
more RAM
GNU/Linux
ur mum
Skynet
drivers
Windows XP source code
patches
programming socks
package manager
5G network
the Kernel
botnet
deoxyribonucleic acid
Gentoo
the infamous hacker known as Four Chins
basket waiving forum
Temple OS
blockchain
geostationary satelite network
CIA backdoor
NSA backdoor(s)
Anonymous
passwords
ncmpcpp
the BIOS
127.0.0.1
neural networks
Internet Explorer
quantum computer network
nearest 5G tower
Internet of Things
hypertext transfer protcol
EOF
)

exits=$(cat <<EOF
Operation failed successfully.
Error: No Error Found!
Keyboard not detected. Press any key do continue...
EOF
)


finish () {
    printf "\n"
    printf "%s" "$exits" | shuf -n 1
    printf "\n"
}
trap finish EXIT

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
    sleep $(( ( RANDOM % 5 ) + 1 ))s
done
