#! /bin/bash

	echo "Welcome to Employee Wage Computation Program "

IS_FULL_TIME=1
IS_PART_TIME=2
salary=0
EMP_RATE_PER_HOUR=20

	attendanceValue=$(( RANDOM%3 ))
	echo "$attendanceValue"
	if (( $attendanceValue==$IS_FULL_TIME ))
	then
		echo "Employee is Full Time "
		workHour=8
	elif (( $attendanceValue==$IS_PART_TIME ))
	then
		echo "Employee is Part Time"
		workHour=4
	else
		workHour=0
	fi

	salary=$(( $EMP_RATE_PER_HOUR*$workHour ))
	echo "Salary =  $salary"
