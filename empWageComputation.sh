#! /bin/bash

	echo "Welcome to Employee Wage Computation Program "

IS_FULL_TIME=1
IS_PART_TIME=2
perDaySalary=0
monthSalary=0
WORK_DAY_IN_A_MONTH=20
EMP_RATE_PER_HOUR=20
totalSalary=0

	for (( day=1; day<=$WORK_DAY_IN_A_MONTH; day++))
	do
	attendanceValue=$(( RANDOM%3 ))
	case $attendanceValue in
		1) echo "Employee is Full Time"
			 workHour=8
			HoursCondition=$(( $HoursCondition+8 ))
			((DaysCondition++))
			     ;;
		2) echo "Employee is Part Time"
			 workHour=4
			HoursCondition=$(( $HoursCondition+4 ))
			((DaysCondition++))
			     ;;
		*) workHour=0
	esac

	perDaySalary=$(( $EMP_RATE_PER_HOUR*$workHour ))
	echo "Day : $day          Salary : $perDaySalary"
	totalSalary=$(( $totalSalary+$perDaySalary ))
	done

	echo "Total Salary is $totalSalary"
