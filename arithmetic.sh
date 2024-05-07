echo "enter first number"
read a
echo "enter second number"
read b
echo "1.addition 2.subtraction 3.multiplication 4.division 5.remainder 6.exit"
while :
do
echo "enter the choice"
read choice
case $choice in
1) echo "addition"
expr $a + $b
;;
2) echo "difference"
expr $a - $b
;;
3) echo "multiplication"
expr $a \* $b
;;
4) echo "quotient"
expr $a / $b
;;
5) echo "remainder"
expr $a % $b
;;
6) echo "exit"
break
;;
*) echo "invalid choice"
;;
esac
done