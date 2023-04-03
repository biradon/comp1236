
#TASK 1

#Get user input
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
#Loop to calculate number
for((i=$min;number<=max;i++))
do
    number=$((i*(i+1)/2))
    #Make sure the number in maximum range
    if [ $number -lt $max ];
    then
        #Check even or odd
        if [ $((number % 2)) == 0 ];
        then
            echo "Even number is: $number"
            ((even_count++))
        else
            echo "Odd number is: $number"
            ((odd_count++))
        fi
    fi
done
echo "Total even number is: $even_count"
echo "Total odd number is: $odd_count"
