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
if (($heads==$tails))
then
	while (($heads==$tails))
	do
		for ((i=1;i<=2;i++))
		do
			flipc=$((RANDOM%2))
			if (($flipc==1))
			then
				((heads++))
			elif (($flipc==0))
			then
				((tails++))
			fi
		done
	done
	if [ $heads -gt $tails ]
	then
		echo "Ater tie, heads won by $((heads-tails))"
	elif [ $tails -gt $heads ]
	then
		echo "After tie, Tails won by $((tails-heads))"
	fi
else
	echo "Heads $heads"
	echo "Tails $tails"
fi
