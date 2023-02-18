#!/bin/bash
numbers=(1 2 3 4 5)

echo ${numbers[3]}

#TO SEE THE ENTIRE LIST OF THE ARRAY
  ${numbers[@]}
  
 #To insert
 numbers+=(6)
 
 #TO DELETE
 unset numbers[3]
 
 #to update
 numbers[3]=10
 
  
