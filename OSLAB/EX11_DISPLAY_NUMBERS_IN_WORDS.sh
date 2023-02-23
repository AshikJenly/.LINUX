#!bin/sh

printDigit(){

d=$1
w=$2
case $d in 
1) echo "one $w";;
2) echo "two $w";;
3) echo "three $w";;
4) echo "four $w";;
5) echo "five $w";;
6) echo "six $w";;
7) echo "seven $w";;
8) echo "eight $w";;
9) echo "nine $w";;
esac
}
PrintGreaterThan20(){
d=$1 

case $d in
2) echo "twenty ";;
3) echo "thirty ";;
4) echo "forty ";;
5) echo "fifty ";;
6) echo "sixty ";;
7) echo "seventy ";;
8) echo "eighty ";;
9) echo "ninety ";;
esac
}
PrintTenToNineTeen(){
d=$1
case $d in 
10) echo "ten";;
11) echo "eleven";;
12) echo "twelve";;
13) echo "thirteen";;
14) echo "fourteen";;
15) echo "fifteen";;
16) echo "sixteen";;
17) echo "seventeen";;
18) echo "eighteen";;
19) echo "nineteen";;

esac
}

read -p "Enter any number between 1-9999 : " n
num=$n


Quo=`expr $num / 1000`
num=`expr $num % 1000`
printDigit $Quo "thousand"

Quo=`expr $num / 100`
num=`expr $num % 100`
printDigit $Quo "hundred"

if [ $num -gt 0 ] && [ $n -gt 99 ]; then
    echo "and"
fi

if [ $num -gt 19 ]; then
    Quo=`expr $num / 10`
    num1=`expr $num % 10`
    PrintGreaterThan20 $Quo
    printDigit $num1
    exit 0
fi

if [ $num -gt 9 ]; then
        PrintTenToNineTeen $num
else 
        printDigit $num 
fi
