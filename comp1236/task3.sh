#TASK3
echo "Number of a:"
read a
echo "Your a number is: $a"
echo " "
echo "Number of b:"
read b
echo "Your b number is: $b"
echo " "
echo "Number of c:"
read c
echo "Your c number is: $c"
echo " "
echo "Please select option 1 or 2 by type 1 or 2: "
read n
echo "You selected $n"
echo " "

if [ $n == 1 ];
then
echo "How many term do you want to print: "
read term1
echo "You selected $term1 term"
echo " "
number1=0
result1=0
for((i=1;i<=term1;i++))
do
((number1++))
result1=$((a*number1*number1+b*number1+c))
echo "The number is: $result1"
done

else
echo "What is your position you want to print: "
read term2
echo "You selected $term2 position"
echo " "
result2=$((a*term2*term2+b*term2+c))
if [ $((682%result2)) == 0 ];
then
echo "The $term2 term is $result2. This term is a factor of 682"
else
echo "The $term2 term is $result2. This term is not a factor of 682"
fi
fi
