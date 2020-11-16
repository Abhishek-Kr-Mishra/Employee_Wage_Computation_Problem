#! /bin/bash

	echo "Welcome to Employee Wage Computation Program "

IS_FULL_TIME=1
IS_PART_TIME=2
WORK_DAY_IN_A_MONTH=20
EMP_RATE_PER_HOUR=20
MAX_HOURS_IN_MONTH=1000
totalWorkingDays=0
totalWorkHours=0

function GetTotalWorkHours()
{
                case $1 in
                        1)
                                workHour=8
                                        ;;
                        2)
				workHour=4
                                ;;
                        *) workHour=0
                esac

                     echo "$workHour"

}


	while(( $totalWorkHours < $MAX_HOURS_IN_MONTH && $totalWorkingDays < $WORK_DAY_IN_A_MONTH ))
	do
		((totalWorkingDays++))
		workHours="$( GetTotalWorkHours $(( RANDOM%3 )) )"
		echo "$workHours"
		totalWorkHours=$(( $totalWorkHours+$workHours ))
	done

	totalSalary=$(( $totalWorkHours*$EMP_RATE_PER_HOUR ))
	echo "Total Salary is $totalSalary"
