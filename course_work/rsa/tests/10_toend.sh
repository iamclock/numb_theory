#! /usr/bin/env bash



DIR=dihotomy

list=$(ls ./$DIR/ | grep .dat)



for i in ${list}
do
	echo '' >> ./$DIR/$i
done