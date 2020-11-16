#! /bin/bash

	echo "Welcome to Employee Wage Computation Program "

IS_FULL_TIME=1
IS_PART_TIME=2
salary=0
EMP_RATE_PER_HOUR=20

	attendanceValue=$(( RANDOM%3 ))
	echo "Random Number: $attendanceValue"
	case $attendanceValue in
		1) echo "Employee is Full Time"
			 workHour=8
			     ;;
		2) echo "Employee is Part Time"
			 workHour=4
			     ;;
		*) workHour=0
	esac

	echo "Work Hours : $workHour"
	salary=$(( $EMP_RATE_PER_HOUR*$workHour ))
	echo "Salary =  $salary"
