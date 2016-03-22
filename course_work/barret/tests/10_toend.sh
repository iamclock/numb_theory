#! /usr/bin/env bash





list=$(ls ./barret/ | grep .dat)



for i in ${list}
do
	echo '' >> "./barret/"$i
done