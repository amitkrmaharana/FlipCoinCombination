#!/bin/bash
declare -A triplet
isHead=0
isTail=1
hhh_count=0
hht_count=0
hth_count=0
htt_count=0
thh_count=0
tht_count=0
tth_count=0
ttt_count=0
echo "Welcome to Flip Coin Combination Simulator Program"
for((i=1;i<=20;i++))
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
	flipCoin3=$((RANDOM%2))
	case $flipCoin1 in
		$isHead)case $flipCoin2 in
				$isHead)case $flipCoin3 in
						$isHead)triplet["flip$i"]="HHH"
							(( hhh_count++ ));;
						$isTail)triplet["flip$i"]="HHT"
							(( hht_count++ ));;
					esac;;
				$isTail)case $flipCoin3 in
                                                $isHead)triplet["flip$i"]="HTH"
                                                        (( hth_count++ ));;
                                                $isTail)triplet["flip$i"]="HTT"
                                                        (( htt_count++ ));;
                                        esac;;

			esac;;
		$isTail)case $flipCoin2 in
                        	$isHead)case $flipCoin3 in
                                                $isHead)triplet["flip$i"]="THH"
                                                        (( thh_count++ ));;
                                                $isTail)triplet["flip$i"]="THT"
                                                        (( tht_count++ ));;
                                        esac;;

                        	$isTail)case $flipCoin3 in
                                                $isHead)triplet["flip$i"]="TTH"
                                                        (( tth_count++ ));;
                                                $isTail)triplet["flip$i"]="TTT"
                                                        (( ttt_count++ ));;
                                        esac;;

                	esac;;

	esac
done
hhh_percent=$((hhh_count*100/20))
hht_percent=$((hht_count*100/20))
hth_percent=$((hth_count*100/20))
htt_percent=$((htt_count*100/20))
thh_percent=$((thh_count*100/20))
tht_percent=$((tht_count*100/20))
tth_percent=$((tth_count*100/20))
ttt_percent=$((ttt_count*100/20))
echo ${triplet[@]}
echo ${!triplet[@]}
echo "Percentage of hhh is $hhh_percent"
echo "Percentage of hht is $hht_percent"
echo "Percentage of hth is $hth_percent"
echo "Percentage of htt is $htt_percent"
echo "Percentage of thh is $thh_percent"
echo "Percentage of tht is $tht_percent"
echo "Percentage of tth is $tth_percent"
echo "Percentage of ttt is $ttt_percent"

