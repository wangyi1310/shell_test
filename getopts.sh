#! /bin/bash
#选项之间可以通过冒号:进行分隔，也可以直接相连接，：表示选项后面必须带有参数，如果没有可以不加实际值进行传递

while getopts "ab:c" opt;
do 
	case "$opt" in
		a) echo "Found the -a option";;
		b) echo "Found the -b option,with value $OPTARG";;
		c) echo "Found the -c ";;
		*) echo "args error"
	esac
		
done
