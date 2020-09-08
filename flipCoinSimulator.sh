#! /bin/bash
echo THIS DISPLAYS THE WINNER HEADS OR TAILS
#H=1,T=0
read -p "ENTER THE NUMBER OF TIMES YOU WANT TO FLIP" flipcoin
heads=0
tails=0
while (($flipcoin!=0))
do
	flip=$((RANDOM%2))
	if [ $flip -eq 1 ]
	then
		((heads++))
	else
		((tails++))
	fi
	if (( $heads==21 ))
	then
		echo "Heads won by $((heads-tails)) points"
		break
	elif (( $tails==21 ))
	then
		echo "Tails won by $((tails-heads)) points"
		break
	fi
	((--flipcoin))
done
echo H $heads
echo T $tails
