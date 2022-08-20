#!/bin/sh

# Getting current time
time=`date +"%H:%M"`

if [ "$1" = "good" ];
then echo "$time $2" >> "$HOME/.workday/good.txt"

elif [ "$1" = "bad" ];
then echo "$time $2" >> "$HOME/.workday/bad.txt"

elif [ "$1" = "idea" ];
then echo "$time $2" >> "$HOME/.workday/idea.txt"

elif [ "$1" = "problem" ];
then echo "$time $2" >> "$HOME/.workday/problem.txt"

else echo "ERROR: Type not recognized"

fi
