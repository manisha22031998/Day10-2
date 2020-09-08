#! /bin/bash
echo THIS DISPLAYS THE WINNER HEADS OR TAILS
#H=1,T=0
read -p "ENTER THE NUMBER OF TIMES YOU WANT TO FLIP" flipcoin
heads=0
tails=0
for (( i=1;i<=$flipcoin;i++ ))
do
	flip=$((RANDOM%2))
	if [ $flip -eq 1 ]
	then
		((heads++))
	else
		((tails++))
	fi
done
echo H $heads
echo T $tails
