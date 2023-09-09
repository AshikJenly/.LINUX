#!/bin/sh

factorial(){

x=$1
i=1
fact=1

until [ $i -gt $x ]
do
    fact=`expr $fact \* $i`
    i=`expr $i + 1`
done

}

read -p "Enter n value : " n
read -p "Enter r value : " r

#n fact
factorial $n
nf=$fact

#r fact
factorial $r
rf=$fact

#n-r fact
factorial `expr $n - $r `
n_r=$fact

#r! * (n-r)!
rn_rf=`expr $rf \* $n_r `

ncr=`expr $nf / $rn_rf `

echo "The Combination of $n C $r is :  $ncr "