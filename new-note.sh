#!/bin/sh

if [ "$1" = "good" ];
then echo "$2" >> "$HOME/.workday/good.txt"

elif [ "$1" = "bad" ];
then echo "$2" >> "$HOME/.workday/bad.txt"

elif [ "$1" = "idea" ];
then echo "$2" >> "$HOME/.workday/idea.txt"

elif [ "$1" = "problem" ];
then echo "$2" >> "$HOME/.workday/problem.txt"

else echo "ERROR: Type not recognized"

fi
