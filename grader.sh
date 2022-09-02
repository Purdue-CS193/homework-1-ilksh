#!/usr/bin/env bash
clear
echo -e "\e[1;34mWelcome to the CS 193 Homework 1 Grader!\e[0m"
source ~/.bashrc

POINTS=0

./clean.sh
echo "ORIGIN Directory Reset"
OUTPUT=$(./answers.sh)
echo "Running answers.sh"

# Task 1
echo -e "\n\e[1;34mTask 1\e[0m"

FILE=ORIGIN/Homework/MA165/HW1.txt
if test -f "$FILE"; then
    echo -e "\e[92m$FILE exists: +1 points\e[0m"
    ((POINTS=$POINTS + 1))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

# Task 2 
echo -e "\n\e[1;34mTask 2\e[0m"

FILE=ORIGIN/Memes/SpongeBob/money.jpeg
if test -f "$FILE"; then
    echo -e "\e[91m$FILE exists\e[0m"
else 
    echo -e "\e[92m$FILE does not exist: +1 points\e[0m"
    ((POINTS=$POINTS + 1))
fi 

# Task 3
echo -e "\n\e[1;34mTask 3\e[0m"

FILE=ORIGIN/Memes/SpongeBob/fafsa.jpg
if test -f "$FILE"; then
    echo -e "\e[92m$FILE exists: +1 points\e[0m"
    ((POINTS=$POINTS + 1))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

# Task 4
echo -e "\n\e[1;34mTask 4\e[0m"

FILE=ORIGIN/Homework/CS191
if test -d "$FILE"; then
    echo -e "\e[91m$FILE exists\e[0m"
else 
    echo -e "\e[92m$FILE does not exist: +1 points\e[0m"
    ((POINTS=$POINTS + 1))
fi 

# Task 5
echo -e "\n\e[1;34mTask 5\e[0m"

FILE=ORIGIN/Programs/C++
if test -d "$FILE"; then
    echo -e "\e[92m$FILE exists: +2 points\e[0m"
    ((POINTS=$POINTS + 2))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

# Task 6
echo -e "\n\e[1;34mTask 6\e[0m"

FILE=ORIGIN/Programs/C++/Age.cpp
if test -f "$FILE"; then
    echo -e "\e[92m$FILE exists: +2 points\e[0m"
    ((POINTS=$POINTS + 2))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

# Task 7
echo -e "\n\e[1;34mTask 7\e[0m"

FILE=ORIGIN/Homework/CS180/Project_1
if test -d "$FILE"; then
    echo -e "\e[92m$FILE exists: +2 points\e[0m"
    ((POINTS=$POINTS + 2))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

# Task 8
echo -e "\n\e[1;34mTask 8\e[0m"

FILE=ORIGIN/Programs/C/Count.c
if test -f "$FILE"; then
    echo -e "\e[92m$FILE exists: +1 points\e[0m"
    ((POINTS=$POINTS + 1))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

FILE=ORIGIN/Programs/C/Goodbye.c
if test -f "$FILE"; then
    echo -e "\e[92m$FILE exists: +1 points\e[0m"
    ((POINTS=$POINTS + 1))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

# Task 9
echo -e "\n\e[1;34mTask 9\e[0m"

FILE="ORIGIN/Programs/Python 3/Name.py"
if test -f "$FILE"; then
    echo -e "\e[92m$FILE exists: +1 points\e[0m"
    ((POINTS=$POINTS + 1))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

FILE="ORIGIN/Programs/Python 3/Space.py"
if test -f "$FILE"; then
    echo -e "\e[92m$FILE exists: +1 points\e[0m"
    ((POINTS=$POINTS + 1))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

# Task 10
echo -e "\n\e[1;34mTask 10\e[0m"

FILE=ORIGIN/Homework/POL141/Essay.txt
if test -f "$FILE"; then
    echo -e "\e[92m$FILE exists: +2 points\e[0m"
    ((POINTS=$POINTS + 2))
else 
    echo -e "\e[91m$FILE does not exist\e[0m" 
fi

# Task 11
echo -e "\n\e[1;34mTask 11\e[0m"

FILES=$(ls)
if [ "$FILES" = "$OUTPUT" ]; then 
    echo -e "\e[92mCommand correct: +2 points\e[0m"
    ((POINTS=$POINTS + 2))
else 
    echo -e "\e[91mCommand incorrect\e[0m" 
fi


# Task 12
echo -e "\n\e[35mTask 12 will be manually graded by your TA\e[0m"


echo -e "\e[92mFinal Score: $POINTS/20\e[0m"
