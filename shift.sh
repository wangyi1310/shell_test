#!/bin/bash
# =====linux shell====
# =====by wangyipeng====
#通过shift对参数进行左移默认shift左移1位

#while [ $# != 0 ];
#do
#	echo "first arg $1 args num $#"
#	shift
#done

while [ -n "$1" ];#判断第一个参数是不是有值
do
	case ""$1 in
		-a) echo "-a option";;
		-b) echo "-b option";;
		 *) echo "$1 is vaild optionss";;
	esac
	shift #不断的进行shift进行左移
done
