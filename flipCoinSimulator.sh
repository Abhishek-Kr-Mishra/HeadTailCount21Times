#! /bin/bash


echo "********Welcome to Coin toss Simulation*********"
headValue=1
tailValue=2

                toss=$(( RANDOM%2+1 ))
                if (( $toss==$headValue ))
                then
                        echo "It's Head.....Head is winner"
                else
			echo "It's a Tail....Tail is Winner"
                fi
