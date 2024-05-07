fibonacci() {
n=$1
a=0
b=1
if [ $n -eq 1 ]; then
echo $a
elif [ $n -eq 2 ]; then
echo -n "$a $b"
else
echo -n "$a $b "
for (( i=3; i<=n; i++ )); do
c=$((a + b))
echo -n "$c "
a=$b
b=$c
one
fi
echo
}
read -p "Enter the number of terms in the Fibonacci series: " num_terms
result=$(fibonacci $num_terms)
echo "Fibonacci series up to $num_terms terms: $result"
