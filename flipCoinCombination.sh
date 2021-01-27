#!/bin/bash
declare -A doublet
isHead=0
isTail=1
hh_count=0
ht_count=0
th_count=0
tt_count=0
echo "Welcome to Flip Coin Combination Simulator Program"
for((i=1;i<=20;i++))
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
	case $flipCoin1 in
		$isHead)case $flipCoin2 in
				$isHead)doublet["flip$i"]="HH"
					(( hh_count++ ));;
				$isTail)doublet["flip$i"]="HT"
					(( ht_count++ ));;
			esac;;
		$isTail)case $flipCoin2 in
                        	$isHead)doublet["flip$i"]="TH"
                        	        (( th_count++ ));;
                        	$isTail)doublet["flip$i"]="TT"
                        	        (( tt_count++ ));;
                	esac;;

	esac
done
hh_percent=$((hh_count*100/20))
ht_percent=$((ht_count*100/20))
th_percent=$((th_count*100/20))
tt_percent=$((tt_count*100/20))
echo ${doublet[@]}
echo ${!doublet[@]}
echo "Percentage of hh is $hh_percent"
echo "Percentage of ht is $ht_percent"
echo "Percentage of th is $th_percent"
echo "Percentage of tt is $tt_percent"

