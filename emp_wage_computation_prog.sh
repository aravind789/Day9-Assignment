#!/bin/bash -x
random=$(($RANDOM%2))
wage_per_hour=20
is_part_time=1
is_full_time=0
work_hours=0
if [ $random -eq 0 ]
then
	work_hours=8
elif [$random -eq 1 ]
then
	work_hours=4
fi
dailyWage=$(($wage_per_hour*$is_full_time))

