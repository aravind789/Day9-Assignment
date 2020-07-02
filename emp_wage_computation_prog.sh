#!/bin/bash -x
wage_per_hour=20
is_part_time=1
is_full_time=0
work_hours=0
Working_days_per_month=20
n=0
while [ $n -lt 20 ]
do
	random=$(($RANDOM%2))
	case $random in
	$is_part_time)  work_hours=4;;
	$is_full_time)  work_hours=8;;
	*)		work_hours=0;;
esac
n=$((n+1))
dailyWage=$(($wage_per_hour*$work_hours))
echo "DailyWage" $dailyWage
