#!/bin/bash -x
random=$(($RANDOM%2))
wage_per_hour=20
is_part_time=1
is_full_time=0
work_hours=0
case $random in
	$is_part_time)  work_hours=4;;
	$is_full_time)  work_hours=8;;
	*)		work_hours=0;;
esac
dailyWage=$(($wage_per_hour*$work_hours))
echo "DailyWage" $dailyWage
