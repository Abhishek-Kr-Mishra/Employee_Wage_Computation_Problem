#! /bin/bash

	echo "Welcome to Employee Wage Computation Program "

	attendanceValue=$(( RANDOM%2 ))
	if (( attendanceValue==1 ))
	then
		echo "Employee is Present "
	else
		echo "Employee is Absent"
	fi

