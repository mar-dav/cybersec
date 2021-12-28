#!/bin/bash
for i in "$(cat ../Player_Analysis/0315_win_loss_player_data | grep '\-' | awk -F ' ' '{print $1 " " $2}')"
do
	cat "0315_Dealer_schedule" | grep "$i" | awk -F ' ' '{print $1 " " $2 " " $5 " " $6}' 
done

echo "$time"
