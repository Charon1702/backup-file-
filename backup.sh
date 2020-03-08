#!/bin/bash
IFS=$'\n'
clear
files=(`find /home/fun -name "*.pdf" 2>/dev/null`)
number=${#files[@]}
echo "numbers of files : " $number
mkdir /home/fun/my_pdf 2>/dev/null
j=0
for((i=0; i< $number ; i++));do
   ((j++))
   cp "${files[i]}" "/home/fun/my_pdf"
   echo "$j - ${files[i]} ----> copied ! "
done
echo "finish ! :)"  
notify-send "Fils copied :) !"


