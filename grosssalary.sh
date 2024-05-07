#!/bin/bash
calculate_gross_salary() {
local basic=$1
if [ $basic -lt 15000 ]; then
hra=$(echo "scale=2; $basic * 0.10" | bc)
da=$(echo "scale=2; $basic * 0.90" | bc)
else
hra=100
da=$(echo "scale=2; $basic * 0.98" | bc)
fi
gross_salary=$(echo "scale=2; $basic + $hra + $da" | bc)
echo $gross_salary
}
read -p "Enter the basic salary: " basic_salary
gross_salary=$(calculate_gross_salary $basic_salary)
echo "Gross Salary: $gross_salary"