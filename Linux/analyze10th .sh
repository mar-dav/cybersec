#!/bin/bash
input=[]

for i in "$(cat ../Player_Analysis/0310_win_loss_player_data | grep '\-' | awk -F ' ' '{print $1 " " $2}')"
do
	echo "$(cat "0312_Dealer_schedule" | grep "$i" | awk -F ' ' '{print $1 " " $2 " " $5 " " $6}')" 
done


