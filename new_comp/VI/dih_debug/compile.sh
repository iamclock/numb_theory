#! /bin/bash

# скрипт запускает транслятор со старых символов на новые файл name_.l
# затем компилирует выходной файл
# и удаляет промежуточные файлы .s _.l




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
#~/2015/numb_theory/new_comp/VI/dih_debug/ltc $file_name"_.l"
rm $file_name"_.l" $file_name"_.s"
