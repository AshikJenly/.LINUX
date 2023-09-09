#!/bin/sh

i=0

until [ !  $i -lt 10 ]
do

	echo $i
	i=`expr $i + 1`
done
