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
function getWorkingHours(){
        case $1 in
        $is_part_time)  work_hours=4;;
        $is_full_time)  work_hours=8;;
        *)              work_hours=0;;
esac
echo $work_hours
while [ $total_working_hours -lt $max_hours_in_month ] && [  $total_working_days -lt $Working_days_per_month ]
do
	((total_working_days))
	work_hours="$( getWorkingHours $((RANDOM%2)) )"
	total_working_hours=$(($total_working_hours + $work_wours ))
	dailyWage=$(($wage_per_hour*$work_hours))
	echo "DailyWage is :" $dailyWage
done
