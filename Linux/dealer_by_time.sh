#!/bin/bash
top="$(head -1 0310_Dealer_schedule)"

data="$(cat "$1_Dealer_schedule" | grep "$2" | grep "$3" | awk -F ' ' '{print $1 " " $2 " " $3 " " $4 " " $5 " " $6 " " $7 " " $8 " "}')"

echo $top
echo $data


