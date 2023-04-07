#TASK2

#Get user input
read -p "Number amount you want to print:" input
echo "You selected $input want to print"
echo " "
read -p "Number you want to check multiple: " multiple
echo "You selected $multiple is your checking multiple"
echo "  "
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
    if [ $((result % multiple)) == 0 ];
    then
        echo "$result is a multipue of $multiple"
    else
        echo "$result is not a multiple of $multiple"
    fi
done