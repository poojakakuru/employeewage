#!/bin/bash -x

echo "Welcome to the Employee wage program"

isPresent=1;
randomCheck=$(( RANDOM%2 ));

if [ $isPresent -eq $randomCheck ];
then
    echo "Employee is Present";
else
    echo "Employee is absent";
fi

isPresent=1;
randomCheck=$(( RANDOM%2 ));

if [ $isPresent -eq $randomCheck ];
then
   empRatePerHr=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHr));
else
	salary=0;
fi

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$(( RANDOM%3 ));

if [ $isFullTime -eq $randomCheck ];
then
	empHrs=8;
elif [ $isPartTime -eq $randomCheck ];
then
	empHrs=4;
else
	empHrs=0;
fi
salary=$(( $empHrs*$empRatePerHr ));

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$(( RANDOM%3 ));

case $empCheck in
	$isFullTime)
				empHrs=8
				;;
	$isPartTime)
				empHrs=4
				;;
	*)
				empHrs=0
				;;
esac
salary=$(( $empHrs*$empRatePerHr ));

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$(( RANDOM%3 ));
		case $empCheck in
			$isFullTime)
				empHrs=8
				;;
			$isPartTime)
				empHrs=4
				;;
			*)
			empHrs=0
				;;
		esac
		salary=$(($empHrs*$empRatePerHr));
		totalSalary=$(($totalSalary+$salary));
done
