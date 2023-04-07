# COMP1236 Group Project
Use the Bash shell for the completion of this project.
Develop a shell scripting application that allows the user to work with sequences of numbers.
You application should allow the user to perform these three tasks:


## Task 1: The program should find the triangular numbers that are within a range specified by the
user and print only the even ones. For example, if the user choses to print all the even triangular
numbers bigger than 5 but smaller than 100, the program should print 6, 10, 28, 36, 66, 78. The
program should keep a count of how many triangular numbers were even and how many of them
were odd within the range given by the user and print this information too.
For information on triangular numbers click here:
https://plus.maths.org/content/maths-minute-triangular-numbers


## Task 2: Find all the numbers that can be written as the product of two nonnegative even integers
in succession and print them in increasing order. (For example, 8 is the first number that should
be in your output as 2x4=8). The user should specify how many such numbers they want to print.
For each number found the program should also check whether the number is a multiple of
another number chosen by the user (as an input) and indicate this in the output. For example, if
the user chooses 3, for the first number found (8) an example output could be: “8 is not a multiple
of 3’.


## Task 3: Find the terms of a sequence given by the rule Term = an2 + bn + c, where a and b and c
are integers specified by the user and n is a positive integer. This task should give the user two
options:
o Option 1) Find a limited number of terms of the sequence and print them in order (for
example, if the user choses a=3, b=4, and c=1 the first few terms of this sequence are:
8, 21, 40, 65, 96… ). The user also specifies how many terms the program should print. In
addition, the program should print the product of all of the terms found.
o Option 2) Find a term in a position chosen by the user and determine whether this term
is a factor of a number chosen also by the user. For example, for the above sequence
where a=3, b=4 and c=1, if the user requires to print the 10th term and to check whether
this term is a factor of 682, the program should print: “The 10th term is 341.This term is a
factor of 682.”

## Requirement for the whole application
Your application should be user friendly. First, you should ask the user for their name. After getting this
information the program should give the user two options: 1) To continue with the application and 2) To
exit the program. If the user decides to continue with the application, your program should display a
menu with 4 options: the list of operations this application offers (the three tasks), and an option to end
the application.
In your menu design, if user enters T, t or 1, the application should offer to work with triangular numbers
as required by Task 1.
If the user enters P, p or 2, the program should offer to work with the numbers that can be written as
product of two nonnegative even numbers in succession, following the instructions given in Task 2.
If the user enters Q, q, or 3, the application should offer to work with quadratic sequences, as required by
Task 3.
If the user enters E, e, or 4 the program should exit.
The program should display the user’s selection before printing the output. If the user enters a selection
which is different from the choices offered, the program should output an error message. After a task has
been completed, the user should be given the option to select another task, or to exit.
Before writing the code, you should work on the problem-solving part of the application development
process. Draw the flowcharts for each of the tasks separately. You also need to submit the main flowchart
which will show the logic of your entire application. 
