#!/bin/sh

read -p "Enter the string : " s1

len_of_s1=`echo "$s1" | wc -c`

until [ $len_of_s1 -lt 1 ]
do
char=`echo $s1 | cut -c $len_of_s1`
rev=${rev}${char}
len_of_s1=`expr $len_of_s1 - 1 `
done
echo "reversed String is $rev"
if [ $rev = $s1 ]; then
    echo "String is palindrome"
else    
    echo "String is not a palindrome"
fi