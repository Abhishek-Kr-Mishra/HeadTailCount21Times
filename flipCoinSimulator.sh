#! /bin/bash


echo "********Welcome to Coin toss Simulation*********"
headValue=1
tailValue=2
headCount=0
tailCount=0
		while (( $headCount!=21 && $tailCount!=21 ))
		do
                toss=$(( RANDOM%2+1 ))
                if (( $toss==$headValue ))
                then
                        ((headCount++))
                else
			((tailCount++))
                fi
		done
		echo "Head has won $headCount times and Tail has won $tailCount times"

		if (( $headCount>$tailCount ))
		then
        		winner1=$(( $headCount-$tailCount ))
        		echo "Head has $winner1 points more than tail"
		elif (( $tailCount>$headCount ))
		then
		        winner2=$(( $tailCount-$headCount ))
        		echo "Tail has $winner2 point more than head"
		else
        		echo "Tie Match"
		        while (( $headCount-$tailCount<=2 && $tailCount-$headCount<=2 ))
        		do
                 		toss=$(( RANDOM%2+1 ))
                		if (( $toss==$headValue ))
                		then
                        		((headCount++))
                		else
                        		((tailCount++))
                		fi
        		done
		fi

echo -e "Head has won $headCount times \nTail has won $tailCount times"

