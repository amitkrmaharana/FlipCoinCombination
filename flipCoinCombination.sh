#!/bin/bash
declare -A singlet
isHead=0
isTail=1
head_count=0
tail_count=0
echo "Welcome to Flip Coin Combination Simulator Program"
for((i=1;i<=20;i++))
do
	flipCoin=$((RANDOM%2))
	case $flipCoin in
	$isHead)singlet["flip$i"]="HEADS"
		(( head_count++ ));;
	$isTail)singlet["flip$i"]="TAILS"
		(( tail_count++ ))
	esac
done
head_percent=$((head_count*100/20))
tail_percent=$((tail_count*100/20))
echo ${singlet[@]}
echo ${!singlet[@]}
echo "Percentage of heads is $head_percent and that of tails is $tail_percent"
