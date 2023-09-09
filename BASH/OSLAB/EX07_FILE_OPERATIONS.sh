#!/bin/bash

options=("Create_a_File" "Show_File_contents" "Copy_a_File" "Rename_a_File" "Append_a_File" "Linking_a_file" "No_of_words_in_a_File" "Exit")

PS3="Enter your option : "
select opt in ${options[@]}
do 

case $opt in 

     ${options[0]}) 
          read -p "Enter file name : " name
          touch $name  ;;
     ${options[1]}) 
          read -p "Enter File name : " name 
          cont=$(cat $name)
          echo $cont  ;;
     ${options[2]}) 
          read -p "Enter  File Name to copy: " s
          read -p "Enter File Name to save the copy : " a
          cp $s $a 
          echo "Copied Successfully" ;;
     ${options[3]}) 
          read -p "Enter old File Name : " s
          read -p "Enter new File Name : " a
          mv $s $a 
          echo "Renamed Successfully" ;;
     ${options[4]}) 
          read -p "Enter file Name to write : " f 
          echo "Write the contents "
          cat >>$f ;; #check the cat termination process
     ${options[5]}) 
          read -p "Enter  File to Link  : " f1 
          read -p "Enter New File to Link : " f2
          ln $f1 $f2
          ;;
     ${options[6]}) 
          read -p "Enter the File Name : " f
          w=$(cat $f |wc -w)
          echo "The File $f contains $w Words: ";;
     ${options[7]}) 
          echo "You are on Exit .."
          exit 0 ;;
     
esac

done 
