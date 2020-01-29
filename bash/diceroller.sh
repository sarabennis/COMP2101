#!/bin/bash
# this script rolls a six-sided die
# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one
# roll the dice and display the result



################################################################################################
echo "rolling a pair of six sided die"
echo "
Rolling...
$(( RANDOM % 6 + 1)),$(( RANDOM % 6 + 1)) rolled
"
#################################################################################################
echo "rolling dice 4 times since there is 4 letter in my first name"
echo "rolling........
($(( RANDOM % 6 + 1))-S,$(( RANDOM % 6 + 1))-A ,$(( RANDOM % 6 + 1))-R ,$(( RANDOM % 6 + 1))-A)rolled
"

################################################################################################

echo "rolling a pair of 5 six sided die"
echo "
Rolling...
$(( RANDOM % 6 + 1)),$(( RANDOM % 6 + 1)),$(( RANDOM % 6 + 1)),$(( RANDOM % 6 + 1)),$(( RANDOM % 6 + 1)) rolled
"
##################################################################################################

echo "rolling one 20 sided die"
echo "
rolling......
$((RANDOM % 20+ 1))  Rolled
"
####################################################################################################
