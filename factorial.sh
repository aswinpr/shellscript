factorial(){ 
	if [ $1 -eq 0 ]; 
	then 
		echo 1 
	else 
		local temp=$(expr $1 - 1) 
		local result=$(factorial $temp) 
		echo $(expr $result \* $1) 
	fi 
} 
echo "Enter a number:" 
read num result=$(factorial $num)
echo "The factorial of $num is: $result"