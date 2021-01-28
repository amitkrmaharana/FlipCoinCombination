#!/bin/bash -x
isHead=0
isTail=1
head_count=0
tail_count=0
hh_count=0
ht_count=0
th_count=0
tt_count=0
hhh_count=0
hht_count=0
hth_count=0
htt_count=0
thh_count=0
tht_count=0
tth_count=0
ttt_count=0
function Singlet() {
		case $1 in
			$isHead)(( head_count++ ));;
			$isTail)(( tail_count++ ));;
		esac
}
function Doublet() {
		case $1 in
			$isHead)case $2 in
					$isHead)(( hh_count++ ));;
					$isTail)(( ht_count++ ));;
				esac;;
			$isTail)case $2 in
                	        	$isHead)(( th_count++ ));;
                	        	$isTail)(( tt_count++ ));;
                		esac;;

		esac
}
function Triplet() {
		case $1 in
			$isHead)case $2 in
					$isHead)case $3 in
							$isHead)(( hhh_count++ ));;
							$isTail)(( hht_count++ ));;
						esac;;
					$isTail)case $3 in
        	                                        $isHead)(( hth_count++ ));;
        	                                        $isTail)(( htt_count++ ));;
        	                                esac;;
				esac;;
			$isTail)case $2 in
	                        	$isHead)case $3 in
	                                                $isHead)(( thh_count++ ));;
	                                                $isTail)(( tht_count++ ));;
	                                        esac;;
	                        	$isTail)case $3 in
	                                                $isHead)(( tth_count++ ));;
	                                                $isTail)(( ttt_count++ ));;
	                                        esac;;
	                	esac;;
		esac
}
echo "Welcome to Flip Coin Combination Simulator Program"
for((i=1;i<=20;i++))
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
	flipCoin3=$((RANDOM%2))
	Singlet $flipCoin1
	Doublet $flipCoin1 $flipCoin2
	Triplet $flipCoin1 $flipCoin2 $flipCoin3
done
if [ $head_count -gt $tail_count ]
then
	echo "Winning combination is singlet heads"
else
	echo "Winning combination is singlet tails"
fi
echo $head_count
echo $tail_count
echo $hh_count
echo $ht_count
echo $th_count
echo $tt_count
echo $hhh_count
echo $hht_count
echo $hth_count
echo $htt_count
echo $thh_count
echo $tht_count
echo $tth_count
echo $ttt_count

