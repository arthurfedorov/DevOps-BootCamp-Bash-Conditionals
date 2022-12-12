#!/bin/bash

IFS=',' read -r -a array <<< "$1"

#Write your code here

array_counter=0

for i in ${array[@]}; do
    if [[ $i%2 -eq 0 ]]; then
     let array_counter+=$i
    fi
done

echo $array_counter