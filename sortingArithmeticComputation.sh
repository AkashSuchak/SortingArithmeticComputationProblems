#! /bin/bash -x

#AUTHOR : AKASH SUCHAK
#Store the results in a Dictionary for every Computation

#User Inputs
read -p "Enter Value of a : " a
read -p "Enter Value of b : " b
read -p "Enter Value of c : " c

#Declaring Dictionary
declare -A computation_results

#Condition to check User Inputs are integer or not then we calculate
if [[ $a ]] && [[ $b ]] && [[ $c ]] && [ $a -eq $a 2>/dev/null ] && [ $b -eq $b 2>/dev/null ] && [ $c -eq $c 2>/dev/null ]
then

	result1=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(a + b * c); print result}' `
	computation_results[comp1]=$result1

	result2=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(a * b + c); print result}' `
	computation_results[comp2]=$result2

	result3=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(c + a / b); print result}' `
	computation_results[comp3]=$result3

	result4=`awk -v a=$a -v b=$b -v c=$c 'BEGIN{result=(a % b + c); print result}' `
	computation_results[comp4]=$result4
else
     echo "Wrong Input!! Enter Integers Only."
fi

#Display Results of all Computation
echo "Results of all Computation : ${computation_results[@]}"
