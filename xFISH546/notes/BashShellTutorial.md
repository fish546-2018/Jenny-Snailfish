#Shell Tutorial
##10/2/2018

###Using the bash shell

1. Open Git Bash
	1. If Git Bash doesn't work set home environment (see 546 wiki)
2. `pwd` = print working directory
3. `cd `= change working directory
	- `cd-` puts you into the last directory you were in
4. `ls` = list what's in the folder
	- `ls -F` lists if things are folder
5. `..` can be used to go up one folder with both `ls` and `cd`
	- `../..` goes up 2 folders, etc	
6. `Tab` complete
	- if you start typing to the point where there is a unique string `De tab` (gets to desktop from `c/Users/Jenny`)
	- if you hit `tab` twice it will list all the options if you can't get to a unique one
7. Creating a new file
	-this will create a new plain text file that you can edit

		nano draft.txt
8. `cat` = concatenate,
	- prints out what is in the file
	- Prints out first line, then concatenates second line and on. Concatenates each line to the screen output
9. Up arrow goes through previous run commands
10. `$` went away! = `ctrl c` gets you back to normalcy
11. `rm`= remove, use it to delete things. MAJOR DELETION, NOT IN RECYCLE BIN. **USE CAUTION.**
	- `-i` = interactive, not default of remove command, but it asks you if you are sure that you want to delete it, helps if you're nervous/beginner
12. `wc` = word count
	- outputs in 'lines, words, characters, filename'
	- often word counts aren't super necessary but line count is (shows how long your program is) `-l` gives you just lines
	- `-c` give you just character
	- `-w` gives you just words
13. `*` wild card stands for zero or more characters

		wc *.pdb 
		#returns wc for everything in folder that contains ".pdb"
14. `>` is a redirect that will sends things to a file
	- default information flow is to the screen
	- `>` redirects to a file
	- if file name doesn't exist it makes a new file
	- if it does it will overwrite that file **BE CAREFUL HERE**
15. `echo` = echos what you type in the terminal
	- can be used to run a script and you put an if statement
	- if something doesn't work `echo "this broke rerun"` would print *this broke rerun* to the screen
16. `sort` = command to sort
	- `-n` = sort things alphanumerically
	- `-nr` = alphanumeric and reverse
17. **Figure out how to get to help documentation**
18. `head` shows you the first 10 lines of the file
	- `-1` changes to first line only (any number can go there)
19. `|` is the **PIPE**, the data flows from one command to the next command without any printing in between
20. 