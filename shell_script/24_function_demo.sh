#!/bin/bash

# To make function
function welcomeNote {
    echo "__________________"
    echo "Welcome"
    echo "__________________"
    echo ""   # <-- adds a blank line for spacing
}   

myfun() {
 echo "Hello Samarth"
}

# To call our function
welcomeNote
myfun

