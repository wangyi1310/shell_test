#! /bin/bash

#file 操作的shell

count=1
for param in $*
do
	echo $param
done

for param in $@
do
	echo $param
done
