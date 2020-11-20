#! /bin/bash


echo "********Welcome to Coin toss Simulation*********"
headValue=1
tailValue=2
headCount=0
tailCount=0
		while (( $headCount!=10 && $tailCount!=10 ))
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
