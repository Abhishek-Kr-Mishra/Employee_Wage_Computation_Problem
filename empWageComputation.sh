#! /bin/bash

	echo "Welcome to Employee Wage Computation Program "

IS_FULL_TIME=1
IS_PART_TIME=2
WORK_DAY_IN_A_MONTH=20
EMP_RATE_PER_HOUR=20
MAX_HOURS_IN_MONTH=1000
totalWorkingDays=0
totalWorkHours=0

	while(( $totalWorkHours < $MAX_HOURS_IN_MONTH && $totalWorkingDays < $WORK_DAY_IN_A_MONTH ))
	do
		((totalWorkingDays++))
		echo "Total Working Day : $totalWorkingDays"
		attendanceValue=$(( RANDOM%3 ))
		case $attendanceValue in
			1) echo "Employee is Full Time"
			 	workHour=8
			     		;;
			2) echo "Employee is Part Time"
			 	workHour=4
			     	;;
			*) workHour=0
		esac
			totalWorkHours=$(( $totalWorkHours+$workHour ))
			echo -e "Total Employee Hours: $totalWorkHours \n"
		done

	totalSalary=$(( $totalWorkHours*$EMP_RATE_PER_HOUR ))
	echo "Total Salary is $totalSalary "
