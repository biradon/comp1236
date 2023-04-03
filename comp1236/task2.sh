#TASK2

#Get user input
echo "Number amount you want to print:"
read input
echo "You selected $input want to print"
echo " "
echo "Your output is go below here"
echo "  "
number=0
result=0
#For loop to print the result
for((i=1;i<input;i++))
do
    number=$((number+2))
    result=$((number*(number+2)))
    #Check multiple of input or not
    if [ $((result % input)) == 0 ];
    then
        echo "$result is a multipue of $input"
    else
        echo "$result is not a multiple of $input"
    fi
done
