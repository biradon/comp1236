#Warm welcome
read -p "Hi, welcome to our program, may I ask, what your name: " name
echo "Hello $name, it's our honour to have you be here"

#Ask user want to use app or exit
echo "Do you want to continue using our program or exit, press 1 to continue press 2 to exit"
read user_selected1
#Condition after user input
if [ $user_selected1 == 1 ]
    then
        #Condition for user choose 3 tasks or exit
        echo "Thank you $name for continue the program"
        echo " "
        for (( ; ; ))
        do
            echo "Welcome $name! In this menu you have 4 options. You can press 1 or T to go to task 1. Press 2 or P to go to task 2. And press 3 or Q to go to task 3. Otherwise, if you want to exit press 4 or E"
            read user_selected2

    #Divided into 4 cases
            case "$user_selected2" in
            #TASK 1
            1|t|T)
                echo "Welcome to the task 1. This is the short indoduction about this task 1. The program should find the triangular numbers that are within a range specified by the user and print only the even ones"
                echo "Try to use it!!"
                #Get user input
                read -p "Minimum number in range: " min
                echo "Your selected minumum number is: $min"
                echo " "
                read -p "Maximum number in range: " max
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
                        #Check number is even or odd
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
                echo "Thank you for using my program, see ya $name"
                exit 1
            ;;

            #TASK 2
            2|p|P)
                echo "This is the short introduction about task 2. Find all the numbers that can be written as the product of two nonnegative even integers in succession and print them in increasing order"
                echo "Now it is your turn"
                #Get User Input
                read -p "Number amount you want to print: " input
                echo "You selected $input want to print"
                echo " "
                echo "Your output is go below here"
                echo "  "
                number=0
                result=0
                #Loop to calculate
                for((i=1;i<input;i++))
                    do
                        number=$[number+2]
                        result=$[number*(number+2)]
                        #Check if the result is multiple of input or not
                        if [ $((result % input)) -eq 0 ];
                            then
                                echo "$result is a multipue of $input"
                        else
                            echo "$result is not a multiple of $input"
                        fi
                done
                echo "Thank you for using my program, see ya $name"
                exit 1
            ;;

            #TASK 3
            3|q|Q)
                echo "This is the short introduction about task 3. Find the terms of a sequence given by the rule Term = an2 + bn + c, where a and b and c are integers specified by the user and n is a positive integer. This task should give the user two options"
                echo "Nonw it is your turn"
                #Get User Input
                read -p "Number of a: " a
                echo "Your a number is: $a"
                echo " "
                read -p "Number of b: " b
                echo "Your b number is: $b"
                echo " "
                read -p "Number of c: " c
                echo "Your c number is: $c"
                echo " "
                read -p "Please select option 1 or 2 by type 1 or 2: " n
                echo "You selected $n"
                echo " "

                #This is option 1
                if [ $n == 1 ];
                    then
                        echo "In the option 1, The program will find a limited number of terms of the sequence and print them in order"
                        echo "Now it is your turn"
                        #Get user input
                        read -p "How many term do you want to print: " term1
                        echo "You selected $term1 term"
                        echo " "
                        number1=0
                        result1=0
                        #Loop to calculate
                        for((i=1;i<=term1;i++))
                            do
                                ((number1++))
                                result1=$[a*number1*number1+b*number1+c]
                                echo "The number is: $result1"
                        done
                echo "Thank you for using my program, see ya $name"
                #This is option 2
                else
                    echo "In the option 2. Find a term in a position chosen by the user and determine whether this term is a factor of a number chosen also by the user"
                    echo "Now it is your turn"
                    #Get user input
                    read -p "What is your position you want to print: " term2
                    echo "You selected $term2 position"
                    echo " "
                    result2=$[a*term2*term2+b*term2+c]
                    #Check the term is a factor of 682 or not
                    if [ $[682%result2] -eq 0 ];
                        then
                            echo "The $term2 term is $result2. This term is a factor of 682"
                        else
                            echo "The $term2 term is $result2. This term is not a factor of 682"
                        fi
                echo "Thank you for using my program, see ya $name"
                fi
                exit 1
            ;;

            #User select to exit the program
            4|e|E)
                echo "You selected to exit the program"
                echo "See you soon $name, hope you find this program is interesting."
                exit 1
            ;;

            #Handle or the input
            *)
                echo "Invalid selection, please select again $name"
            ;;
            esac
        done
    #User select to exit from condition1
    else
        echo "You selected 2 which means exit the program"
        echo "See ya $name, hope you find this program is interesting."
        exit 1
fi
