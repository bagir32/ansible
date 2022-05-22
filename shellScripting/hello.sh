#!/bin/bash

set -e

echo "Hello, World!"

((sum=25+35))

echo $sum

expr 25 + 15

((r=100+3))
echo $r

((z=r++))
echo $z
echo $r

i=$1

j=$2

while [ $i -le $j ]
do
	echo $i
	((i++))
done

echo "2nd loop"
k=$1

for ((k; k<=$j; k++))
do
	if [[ $k -gt 7 && $k -gt 9 ]]
	then

            echo $k
        fi
done


echo "Enter name:"
read x
echo "Hello, $x"

