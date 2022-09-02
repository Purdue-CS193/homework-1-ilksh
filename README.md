# CS 193 Homework 1 - Terminal

<img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/terminal-512.png" alt="Terminal_Icon" width="250"/>

## What is this assignment?

For this assignment, you will be making a basic shell script to make some changes to a file system.  A shell script is a useful tool for running multiple terminal commands sequentially.  For this assignment, all your answers will be placed in the `answers.sh` file.

## When is this due?

Homework 1 is due on Friday, September 16th at 11:59PM EDT.

## When will I know that I am done?

* You will be finished with the assignment when you have a functional **SINGLE COMMAND** for each of the 11 tasks in your `answers.sh` file.

* In order to test your commands, run `bash -i grader.sh` in terminal. This program will let you know which command is not functionally properly.
   * Please note that the grade you receive with the ` bash -i grader.sh` is not your guaranteed grade on homework 1. Your TA will still go through your commands to ensure that you only use a single command for each of the tasks.



## Getting Started

1. Generate a personal access token <br/>
Visit https://github.com/settings/profile and go to Developer settings --> Personal access tokens

![Image description: Under the Personal access tokens page, in GitHub settings, there is a red box around the "Generate new token" button](https://github.com/Purdue-CS193/CS193HW1/blob/master/Screenshots/Generate_tokens.png)

Select the appropriate scopes for your token. Please make sure you select **repo** as this gives you access to write, read, etc. with public and private repos. Feel free to select all the scopes just in case you might need them in the future. 

![Image description: A list of possible scopes for a new personal access token. All of the options are selected for the token, "My token".](https://github.com/Purdue-CS193/CS193HW1/blob/master/Screenshots/List_of_Selections.png)

2. Open a terminal window
   
   - Windows: Open up PowerShell
   
   - Mac & Linux: Open Terminal
   
   - If you are having issues, it might just be easier to use a lab machine in Lawson or Haas

3. Click the green "Clone or download" button on this GitHub repository and copy the URL. Make sure you are using the option "Clone with HTTPS".

4. Open up your respective terminal application and run `ssh purdue_username@data.cs.purdue.edu`.  Replace "purdue_username" with you Purdue username. It will prompt you to enter your Purdue password. 

5. Run `git clone URL`, replacing URL with what you copied in step 2. (It will ask for GitHub credentials)

6. Run `cd homework-1-USERNAME`, replacing USERNAME with your username (eg. "ahn99") to naviage to the directory with our answers.sh worksheet

7. Run `ls` and make sure you see `answers.sh`.  Don't worry about any other files for now.

8. You are ready to go!  Start typing your answers in `answers.sh`.  To edit `answers.sh` type in either `vim answers.sh` or `nano answers.sh`.  Use the editor that you prefer.  

9. Take a look at the **Terminal_Guide.md** file in the repository. This document reviews the content found in lecture. Everything you need to complete this assignment can be found there.  

## Important Notes!!!! (Please read!!!)

**ALL COMMANDS SHOULD BE FROM THE `ORIGIN` DIRECTORY!!!!!**

For instance `mv Hello.java Hello2.java` would not be an acceptable answer for renaming Hello.java to Hello2.java, since there does not exist Hello.java in the `ORIGIN` directory. Instead, the proper answer would be `mv Programs/Hello.java Programs/Hello2.java`.

**EVERY ANSWER SHOULD ONLY BE A SINGLE COMMAND!!!!! <br>
Please note the difference between a chain of commands and a single command** <br>
*Chain of Commands:* <br> `mv Example/Count.java Example/Java/Count.java && mv Example/Hello.java Example/Java/Hello.java`<br>
*Single Command:* <br> `mv Example/*.java Example/Java`

## Tasks

#### Task 1

Rename `Homework/MA165/HW2.txt` to `HW1.txt`.

#### Task 2

Delete `Memes/SpongeBob/money.jpeg` (it wasn't funny enough to make it into the Memes folder).

#### Task 3

Move `fafsa.jpg` from the Star Wars meme folder to `Memes/SpongeBob` (SpongeBob memes don't belong in the Star Wars folder).

#### Task 4

Delete the `Homework/CS191` directory. *Hint: please refer to the rm section of the Terminal Guide if you're stuck*

#### Task 5

Make a new directory in `Programs` called `C++`.

#### Task 6

Move `Programs/Age.cpp` to the newly created `C++` directory made in Task 5.

#### Task 7

Copy the `Programs/Java` directory into the `Homework/CS180` folder, while renaming the copy to `Project_1`. <br>
*Hint: please refer to the cp section examples of the Terminal Guide for help* <br>
*The copied directory should have a relative pathname of "Homework/CS180/Project_1"*

#### Task 8

Move `Programs/Count.c` and `Programs/Goodbye.c` to the `Programs/C` directory.

#### Task 9

Move `Programs/Name.py` and `Programs/Space.py` to the Python 3 folder in the Programs directory.

#### Task 10

Make a new file in `Homework/POL141` called `Essay.txt`.

#### Task 11

List the files and directories above the current working directory.

#### Task 12

Vim or nano customization! If you haven't made any customization yet, you'll find that the vim/nano text editor isn't debugging/readability friendly. By editing your `~/.vimrc` or `~/.nanorc` file, you can create a more readable and friendly text editor! Please list *at least 3 commands* you added to your `~/.vimrc` or `~/.nanorc` file. Please refer to **Terminal_Guide.md** for more details.

## Optional (Just for Kicks 🙃): Creating an SSH shortcut <br>

*NOTE: This part is not for any points, strictly optional* <br>

It can be tedious to remember different usernames, hostnames, IP addresses, and sometimes even custon private keys to connect to them. There are 2 methods you can choose for creating a ssh shortcut: using SSH Config or create aliases for your shell. Please refer to **SSH_Shortcut.md** for instructions.

## Turning In

1. Make sure all your commands are saved in `answers.sh`!

2. Run `./turn-in.sh` (it will ask for your GitHub username and password)

3. Verify that your answers have been submitted by opening your GitHub repository online and checking the `answers.sh` file.

4. You are done! Yay!!!


## Rubric

| Task    | Points |
| ------- | ------ |
| Task 1  | 1      |
| Task 2  | 1      |
| Task 3  | 1      |
| Task 4  | 1      |
| Task 5  | 2      |
| Task 6  | 2      |
| Task 7  | 2      |
| Task 8  | 2      |
| Task 9  | 2      |
| Task 10 | 2      |
| Task 11 | 2      |
| Task 12 | 2      |
| Total   | 20     |

## FAQ

### How do I reset my ORIGIN directory?

Simply run `./clean.sh`. This will reset your `ORIGIN` directory without deleting your answers in `answers.sh`. It is like nothing ever happened!

### NEED HELP?

Take a look at the **Terminal_Guide.md** file in the repository.  This document reviews the content found in lecture.  Everything you need to complete this assignment can be found there.  

Try different things out by typing out commands in terminal.  It is okay to mess up.  Simply run `./clean.sh` to revert any changes.  The best way to learn is to experiment!

If you need extra help, ask a TA, ask on Piazza, or Google around.  **DO NOT COPY DIRECTLY FROM ANOTHER STUDENT**
