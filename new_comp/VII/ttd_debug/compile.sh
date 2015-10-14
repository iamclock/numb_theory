#! /bin/bash





if [ $# -eq 0 ]
	then
		echo -n "Enter file name by first argument: "
		#var file_name
		read file_name
else
	file_name=$1
fi
var=`basename $file_name .l`
~/2015/numb_theory/for_compile/translator.py $file_name
~/2015/numb_theory/for_compile/ltc $var"_.l"
rm $var"_.s" #$var"_.l"

