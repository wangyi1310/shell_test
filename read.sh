#! /bin/bash
#Read func

read n
#读一个变量到n中
echo $n

read -p "please input num" n
#在输入变量的时候加上提示符
echo $n

read -s -p "please input password" n

exit
