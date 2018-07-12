#! /bin/bash

#file 操作的shell

count=1
cat test | while read line
do
	printf "%-d %-s\n" $count $line 
	count=`expr $count + 1`
done
exit
