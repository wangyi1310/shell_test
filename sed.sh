#!/bin/bash
# =====linux shell====
# =====by wangyipeng====
#sed 命令的使用
#sed -n -e 2p data
#这个可以省略-e
#默认打开的是命令行编辑模式，所以所有数据不会改动到文件中
#sed 命令的选项
#-n 只答应匹配的行
#-e 命令行模式
#-f 将sed的动作写到另一个文件中
#-r 支持扩展表达式
#-i 直接修改文件中的内容
#所有的 替换都可以用正则表达式
#sed -e 4a\newline data 
#sed -e 4c\newline1 data
#sed -e 4d  data
# 4 代表第四行  a 在第四行后面增加一行
# \代表要增加的数据 data 指定的为文件 
#sed -e 4i\newline1 data
# i 可以增加到上一行

#sed -e 2p data
#默认会打印第二行以下的所以添加上-n只打印匹配行的

#sed -i 对文本进行操作
#sed -i 's/d/7523/' data
#执行替换命令当然后面的字符串也可以使用正则表达式(表达式必须用引号引起来)
#sed -i 's/^@//' data

#cat /etc/passwd | sed -n 5,10p #可以对终端输出进行过滤
sed '10,/yi/d' data #终端删除对应的行可以是行号亦可以是该行所包含的单词
#^代表行首 $代表行尾
sed -i '/^$/d' data #删空行


sed '2,$d'  data  #从第二行开始删除到最后一行
sed '/^test/c\10' data #将test开头的行替换成10开头的行
sed 4c/wang data #将第四行替换成wang 
sed '/^test/d' data
echo hell world | sed 's/\w\+/(&)/g'

sed -n '/my/w test2.txt' test.txt #将test.txt 中匹配到的my的行都输出到test2.txt中


