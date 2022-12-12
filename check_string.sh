#!/bin/bash

input_string=$(echo "$1" | tr -d '[:space:]')

letters=$(echo "$input_string" | grep -oE '[A-Za-z]' | wc -l)

numbers=$(echo "$input_string" | grep -oE '[0-9]' | wc -l)

symbols=$(echo "$input_string" | grep -oE '[*!@#$%^&()_+]' | wc -l)

echo "Numbers: $numbers Symbols: $symbols Letters: $letters"