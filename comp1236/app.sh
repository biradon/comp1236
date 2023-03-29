#Warm welcome
echo "Hi, welcome to our program, may I ask, what your name: "
read name
echo "Hello $name, it's our honour to have you be here"
#Ask user want to use app or exit
echo "Do you want to continue using our program or exit, press 1 to continue press 2 to exit"
read user_selected1
#Condition after user input
if [ $user_selected1 == 1 ]
then
#Condition for user choose 3 tasks or exit
echo "Welcome! In this menu you have 4 options, you can press 1 or T to go to function 1. Press 2 or P to go to function 2. And press 3 or Q to go to fucntion 3. Otherwise, if you want to exit press 4 or E"
read user_selected2
if [ $user_selected2 == 1 ]
then
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
exit 1
fi
if [ $user_selected2 == 2 ]
then
#TASK2
echo "Number amount you want to print:"
read input
echo "You selected $input want to print"
echo " "
echo "Your output is go below here"
echo "  "
number=0
result=0
for((i=1;i<input;i++))
do
number=$((number+2))
result=$((number*(number+2)))
if [ $((result % input)) == 0 ];
then
echo "$result is a multipue of $input"
else
echo "$result is not a multiple of $input"
fi
done
exit 1
fi
if [ $user_selected2 == 3 ]
then
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
exit 1
fi
#User select to exit from condition2
if [ $user_selected2 == 4 ]
then
echo "See you soon"
exit 1
fi
#User select to exit from condition1
else
echo "See ya"
exit 1
fi
