#!/bin/bash
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
USER="Sara"
hostname=$(hostname)
###############################################################################
#find the date and time
day=$(date +%A)
hour=$(date +%I)
minute=$(date +%M)
meridian=$(date +%p)
echo "It is a $day at $hour:$minute $meridian"
###############################################################################
if [ $day == "Monday" ]
then
  title="Monday will be good"
elif [ $day == "Tuesday" ]
then
  title="Tuesdy might cold"
elif [ $day == "Wednesdy" ]
then
  title=" Wednesdy will be rainy "
elif [ $day == "THursday" ]
then
  title="Thursday might be chilly"
elif [ $day == "Friday" ]
then
  title="Friday might be busy"
elif [ $day == "Saturday" ]
then
  title="Saturday might be nice "
else
  title="Sunday might be free"

fi
##############################################################################
cat <<EOF

Welcome to planet $hostname, "$title $USER"

EOF
