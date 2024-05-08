calculate_gross_salary() {
    basic_salary=$1
    
    if [ $basic_salary -gt 15000 ]; then
        hra_percent=10
        da_percent=90
    else
        hra_percent=
        da_percent=
    fi
    
    hra=$((basic_salary * hra_percent / 100))
    da=$((basic_salary * da_percent / 100))
    gross_salary=$((basic_salary + hra + da))
    
    echo $gross_salary
}
echo "Enter basic salary of the employee:"
read basic_salary

gross_salary=$(calculate_gross_salary $basic_salary)
echo "Gross salary of the employee is: $gross_salary"