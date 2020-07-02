#!/bin/bash -x
wage_per_hour=20
is_part_time=1
is_full_time=0
work_hours=0
Working_days_per_month=20
max_hours_in_month=100
total_working_days=0
total_working_hours=0
n=0
while [ $total_working_hours -lt $max_hours_in_month ] && [  $total_working_days -lt $Working_days_per_month ]
do
	((total_working_days))
	random=$(($RANDOM%2))
	case $random in
	$is_part_time)  work_hours=4;;
	$is_full_time)  work_hours=8;;
	*)		work_hours=0;;
esac
n=$((n+1))
dailyWage=$(($wage_per_hour*$work_hours))
echo "DailyWage is :" $dailyWage
done
