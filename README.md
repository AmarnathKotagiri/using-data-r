[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=8497449&assignment_repo_type=AssignmentRepo)
# Using Data ICE
Create a new script file for R. Do not type all of your code into the console and attempt to copy it into a script file. Code your script file first, then run the code. This can be line-by-line or all at once. I recommend running it line-by-line to better identify bugs.

Take screen captures of the output in the R console and link it into your GitHub markup document `submission.md`.

To submit, please perform the following:
1. Save a script file for R with the following name: `ice_lastname_firstname.R` where lastname is your last name and firstname is your first name.
1. Save your screenshots of your output to the directory `assets`. This directory exists at the same leve as `data`.
1. Link your screenshots in `submission.md` where appropriate. That is, if you have screenshots supporting your answers, link those screenshots next to your answer.
1. Answer questions in `submission.md`, linking any screenshots as necessary.
1. Push your assignment to GitHub.

### Accessing Data Within R (5 pts.)
Using the dataset [car.test.frame.txt](data/car.test.frame.txt), please perform the following operations in order:
* Open the file within R
* Find out what the column header names are
* Determine the number of columns
* Determine the number of rows
* Test your dataframe to determine which columns are categorical
* How many unique values does Type have?
* How many unique values does Country have?
* What is the value of row 57, column 3?
* What are the values for row 24?
* Using three different methods, select row 29 with columns 1, 2, 3
* Using two different ways, select row 45 with columns 3 and 7
* Create a new dataframe for the column HP using two different methods

### Sorting and Ordering Data (5 pts.)
Now that you have learned to subsample your data, it is your turn to try your new knowledge. Using the car.test.frame dataset, please perform the following operations in order:
* Select compact cars that have a reliability greater than and equal to 4.
* Find compact cars that have a reliability greater than and equal to 3 from Japan, but not from the US
* How many cars are manufactured in Japan/USA?
* How many cars are manufactured in the US or Japan?
* How many cars are manufactured in the US or Japan with a reliability greater than and equal to 4?
* Create a subsample of 70% of your data
* Create samples for a 8-fold cross validation test; save each subsample as a new dataframe
* Select columns that are numeric and save it as a new dataframe
* Remove the columns HP and Price from the dataframe
* Save the columns Country and Weight as a new datafame
* Rename these two columns in the new dataframe
