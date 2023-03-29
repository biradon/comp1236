
#TASK 1
echo "Minimum number in range: "
read min
echo "Your selected minumum number is: $min"
echo " "
echo "Maximum number in range: "
read max
echo "Your selected maximum number is: $max"
echo " "
echo "This is your results: "
echo " "
number=0
even_count=0
odd_count=0
for((i=1;number<=max;i++))
do
number=$((i*(i+1)/2))
if [ $((number % 2)) == 0 ];
then
echo "Even number is: $number"
((even_count++))
else
echo "Odd number is: $number"
((odd_count++))
fi
done
echo "Total even number is: $even_count"
echo "Totan odd number is: $odd_count"
