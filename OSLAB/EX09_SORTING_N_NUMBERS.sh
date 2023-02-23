#!/bin/sh


Sorting(){
v=$1
    awk 'BEGIN{
        printf("\nEnter no of Data : ");
        getline n;
        printf("\nEnter %d elements\n",n)
        for(i=0;i<n;i++)
            getline s[i];

        for(i=0;i<n;i++){
            for(j=0;j<n-1;j++)
            {
                if(s[j] '$v's[j+1])
                {
                    t=s[j]
                    s[j]=s[j+1]
                    s[j+1]=t
                }
            }
        }
        printf("\nAscending Order Elements =>\n",n)
        for(i=0;i<n;i++)
            printf("%d  ",s[i]);
        printf("\n")


    }'
}

ch=1
until [ $ch -eq 0 ]
do
echo "1.Ascending"
echo "2.Descending"
echo "0.exit"
read -p "Your Option : " ch
case $ch in 
    1)Sorting ">";;
    2)Sorting "<";;
    0)echo "you are on exit";;

esac

done