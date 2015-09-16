#! /bin/bash





if [ $# -eq 0 ]
	then
		echo -n "Enter file name by first argument: "
		#var file_name
		read file_name
else
	file_name=$1
fi
~/2015/numb_theory/for_compile/translator.py $file_name".l"
~/2015/numb_theory/for_compile/ltc $file_name"_.l"

