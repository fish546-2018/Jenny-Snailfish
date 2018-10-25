#FastQC
##10/23/18
Reminders:  
For any program the manual can be helpful `--help`  

###FastQC
- little bit of a weird program because it can be used as GUI or as part of the pipeline
- "Non interactive" on their README file
- need the *zip install* file for **all platforms** if you want it as part of the pipeline
- to run interactively (GUI)
	- use file > open to open a fastq file
- no hard and fast rule of what is good and bad, you have to know your data
- using the GUI is hard to reproduce
- So let's go no GUI
- unzip the zip file (the one I'm using because windows)
- open jupyter notebook
- give absolute path for program
- give file to run FastQC on
- -o give place for file to be output to 
	- will output both an html and zip file


