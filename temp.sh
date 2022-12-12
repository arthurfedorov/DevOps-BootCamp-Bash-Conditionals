#!/bin/bash

# Place your code here

input_value=$1

digit_value=$(echo $input_value | grep -oE '[0-9]+')
unit_value=$(echo $input_value | grep -oE '[CK]')


if [ "$unit_value" == "K" ]; then
    inverse_value=$(($digit_value - 273))
    echo "$inverse_value"C""
else
    inverse_value=$(($digit_value + 273))
    echo "$inverse_value"K""
fi