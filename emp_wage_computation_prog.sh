#!/bin/bash -x
random=$(($RANDOM%2))

if [ $random -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
wage_per_hour=20
is_full_time=8
dailyWage=$(($wage_per_hour*$is_full_time))

