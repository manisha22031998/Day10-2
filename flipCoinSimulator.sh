#! /bin/bash
echo THIS DISPLAYS THE WINNER HEADS OR TAILS
heads=1
tails=2
flip=$((RANDOM%2))
if [ $flip -eq 1 ]
then
	echo H
else
	echo T
fi
