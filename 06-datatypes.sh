#!/bin/bash

number1=$1
number2=$2

SUM=$(($number1+$number2))

echo "total : $SUM"

echo "how many args passed :: $#"

echo "all args passed:: $@"

echo "script name : $0"