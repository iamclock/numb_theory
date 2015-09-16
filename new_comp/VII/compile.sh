#! /bin/bash





if [ $# -eq 0 ]
	then
		echo -n "Enter file name by first argument: "
		#var file_name
		read file_name
else
	file_name=$1
fi
echo ~/2015/numb_theory/new_comp/for_compile/translator.py $file_name".l"
echo ~/2015/numb_theory/new_comp/for_compile/ltc $file_name"_.l"

