#! /bin/bash -x

#AUTHOR : AKASH SUCHAK
#Sort The results to show the Coputation Value in the Ascending order

#User Inputs
read -p "Enter Value of a : " a
read -p "Enter Value of b : " b
read -p "Enter Value of c : " c

#Declaring Dictionary
declare -A computation_results

#Declaring Array
declare -a valuesOfDictionary

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
     echo "Wrong Input!! "
fi

index=0

#Dictionary value into array
for key in ${!computation_results[@]}
do
	valuesOfDictionary[$index]=${computation_results[$key]}
	index=$((index+1))
done

#Display Array Values
echo "Displaying Values From Array in Descending Order : "
printf '%.2f\n' ${valuesOfDictionary[@]} | sort -g
