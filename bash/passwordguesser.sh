#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)

echo "type the password"
#capturing the input
read myString
referenceString="password"

# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong

if [ $myString == $referenceString ]
then
  echo "password is correct"
else
  echo "wrong password"
fi





# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)





if [ $myString != $referenceString ]
then
  echo "password is worng try attempt 1"
  read myString
  if [ $myString != $referenceString ]
  then
    echo "password is worng try attempt 2"
    read myString
    if [ $myString != $referenceString ]
    then
      echo "password is worng try attempt 3"
      read myString
      if [ $myString != $referenceString ]
      then
        echo "password is worng try attempt 4"
        read myString
        if [ $myString != $referenceString ]
        then
          echo "password is worng try attempt 5"
          read myString
          if [ $myString != $referenceString ]
          then
            echo "sorry attempt is over"
          else
            echo "correct "
          fi
        else
          echo "correct "
        fi

     else
        echo "correct "

      fi
    else
      echo "correct "

    fi
  else
    echo "correct "

  fi
else
  echo "correct "
fi
