#! /bin/bash -x

#AUTHOR : AKASH SUCHAK
#Compute - a + b * c

#User Inputs
read -p "Enter Value of a : " a
read -p "Enter Value of b : " b
read -p "Enter Value of c : " c

#Condition to check User Inputs are integer or not then we calculate
if [[ $a ]] && [[ $b ]] && [[ $c ]] && [ $a -eq $a 2>/dev/null ] && [ $b -eq $b 2>/dev/null ] && [ $c -eq $c 2>/dev/null ]
then
	result=$(( a + b * c ))
	echo $result
else
     echo "Wrong Input!! Enter Integers Only."
fi
