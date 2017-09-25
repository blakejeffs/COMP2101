#!/bin/bash

# This is the pick a number script from presentation 3

# Get a random number for the user to guess
# The random number has to be between 1 and 10 inclusive

mynumber=$(( $RANDOM % 10 + 1 ))
# Ask the user to guess
read -p "Pick a number from 1 to 10, inclusive: " usernumber

while true; do
# If they got it right, tell them and we're done
  if [ $mynumber -eq "$usernumber" ]; then
    echo "You got it!"
    exit
  else
    if [ $mynumber -gt "$usernumber" ]; then
      echo "Too low, guess again."
    else
      echo "Too high, guess again."
    fi
  fi
# Otherwise keep asking
read -p "Pick a number from 1 to 10, inclusive: " usernumber
done
