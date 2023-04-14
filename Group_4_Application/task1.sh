
#TASK 1

#Get user input
while true
do
    read -p "Minimum number in range: " min
    echo "Your selected minumum number is: $min"
    echo " "
    read -p  "Maximum number in range: " max
    echo "Your selected maximum number is: $max"
    #Make sure user input number not letter
    if ! [[ $min =~ ^[0-9]+$ ]] || ! [[ $max =~ ^[0-9]+$ ]];
    then
        echo "Please input number for min and max"
    else
        #Make sure user input min number less than max number
        if [ $min -gt $max ];  
        then
            echo "Please input min number less than max number"
        else
            break
        fi
    fi
done
echo " "
echo "This is your results: "
echo " "
number=0
even_count=0
odd_count=0
#Loop to calculate number
for((i=1;number<=max;i++))
do
    number=$((i*(i+1)/2))
    #Make sure number in range of max and min
    if [ $number -gt $min ] && [ $number -le $max ];
    then
        if [ $((number % 2)) == 0 ];
        then
            echo "Even number is: $number"
            ((even_count++))
        else
            ((odd_count++))
        fi
    fi
done
echo "Total even number is: $even_count"
echo "Total odd number is: $odd_count"