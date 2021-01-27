#!/bin/bash -x
isHead=0
isTail=1
echo "Welcome to Flip Coin Combination Simulator Program"
flipCoin=$((RANDOM%2))
if [ $flipCoin -eq $isHead ]
then
	echo "HEADS"
else
	echo "TAILS"
fi
