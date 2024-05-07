echo "Enter Binary Number -"
read n
function binaryCon(){
i=0
local num=0
while [ $n != 0 ]
do
digit=`expr $n % 10`
num=$(( num + digit * 2**i ))
n=`expr $n / 10`
(( ++i ))
done
echo "Resultant Decimal Number"
echo "$num"
}
binaryCon