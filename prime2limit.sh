#!/bin/bash
is_prime()
{
local num=$1
if [ $num -lt 2 ]; then
return 1
fi
for (( i=2; i*i<=num; i++ )); do
if [ $((num % i)) -eq 0 ]; then
return 1
fi
done
return 0 }
print_primes() {
local start=$1
local end=$2
for (( num=start; num<=end; num++ )); do
if is_prime $num; then
echo -n "$num "
fi
done
echo
}
read -p "Enter the lower limit: " lower_limit
read -p "Enter the upper limit: " upper_limit
echo "Prime numbers between $lower_limit and $upper_limit are:"
print_primes $lower_limit $upper_limit