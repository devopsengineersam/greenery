#!/bin/bash
NUMBER=$(($RANDOM % 23))

for ((run=1; run <= NUMBER + 1; run++))
do
  echo `fortune` > ~/greenery/file.txt
  /usr/bin/git -C ~/greenery/ add . -A
  /usr/bin/git -C ~/greenery/ commit -m "`fortune -sn 32`"
done

