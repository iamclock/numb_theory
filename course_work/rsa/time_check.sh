#! /usr/bin/env bash


bits=1024
echo -n > output.txt
timedatectl | grep "Local"
while [ $bits -gt 10 ]; do
	#echo bits is $bits
	echo -n > rsa_encr.txt > rsa_decr.txt && echo $bits | ./rsa_ # | tee -a output.txt
	let bits=bits-10
done
timedatectl | grep "Local"
