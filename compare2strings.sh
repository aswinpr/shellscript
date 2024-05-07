#!/bin/bash
read -p "Enter the first string: " string1
read -p "Enter the second string: " string2
if [ -z "$string1" ]; then
echo "The first string is empty."
else
echo "The first string is not empty."
fi
if [ -z "$string2" ]; then
echo "The second string is empty."
else
echo "The second string is not empty."
fi
if [ "$string1" = "$string2" ]; then
echo "The strings are equal."
else
echo "The strings are not equal."
fi