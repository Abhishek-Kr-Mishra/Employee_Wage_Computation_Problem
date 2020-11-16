#! /bin/bash

	echo "Welcome to Employee Wage Computation Program "

salary=0
EMP_RATE_PER_HOUR=20

	attendanceValue=$(( RANDOM%2 ))
	if (( attendanceValue==1 ))
	then
		echo "Employee is Present "
		workHour=8
		salary=$(( $EMP_RATE_PER_HOUR*$workHour ))
	else
		echo "Employee is Absent"
		salary=0
	fi

	echo "Salary =  $salary"
