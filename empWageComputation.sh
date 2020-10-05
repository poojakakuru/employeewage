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
