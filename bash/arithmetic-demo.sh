#!/bin/bash
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
#######################################################################################
#ask user to type numbers
echo "enter first number"
read firstnum
echo "enter second number"
read secondnum
echo "enter a third number"
read thirdnum
#######################################################################################
#arithmetic calculation
sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum*secondnum*thirdnum))
difference=$((firstnum-secondnum-thirdnum))
dividend=$((firstnum / secondnum))
remainder=$((firstnum%secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

########################################################################################
#information to display
cat <<EOF
$firstnum plus $secondnum plus $thirdnum = $sum
$firstnum multiplied by $secondnum multiplied by $thirdnum = $product
$firstnum substracted by $secondnum = $difference
$firstnum devided by $secondnum gives $dividend with remainder $remainder
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF
########################################################################################
