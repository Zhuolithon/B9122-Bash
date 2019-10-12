# B9122-Bash

Question 2: Bash (25 points)
In class we covered several bash commands. In this exercise you¡¯ll use some of these commands to perform simple analysis on the well know Iris Data Set. A description of this data could be found here.

Use curl to download the data which is located at the following url:
https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data

From the data description you can see that the first field is the “sepal length” and the fifth field is the “class”. Create a command pipeline that would:

• Use curl to download the data, piped to… \n
• cut to extract the 1st and 5th fields, piped to...
• sort to sort the data by sepal length starting with the largest, piped to...
• head with an argument to view the top 25 entries piped to…
• cut to then extract only the class (which is now the 2nd field) piped to...
• sort to sort the class data lexicographicly piped to...
• uniq -c to count how many of each class are in the largest 25 sepal length

Use output redirection (“>”) to store the output in a file named topsepallength.txt. Provide the command pipeline and the output file.