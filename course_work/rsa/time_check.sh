#! /usr/bin/env bash


bits=1014

while [ $bits -gt 874 ]; do
	#echo bits is $bits
	echo -n > rsa_encr.txt > rsa_decr.txt && echo $bits | ./rsa_ | tee output.txt
	let bits=bits-10
done
