#!/bin/bash

# download data
curl -s -O https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data

# cut to extract the 1st and 5th fields
cut -d ',' -f 1,5 bezdekIris.data > Q2_cut.txt

# sort to sort the data by sepal length starting with the largest
sort -t ',' -k 1 -r Q2_cut.txt > Q2_sort.txt

# head with an argument to view the top 25 entries
head -n 25 Q2_sort.txt > Q2_head.txt

# cut to then extract only the class (which is now the 2nd field)
cut -d ',' -f 2 Q2_head.txt > Q2_cut_class.txt

# sort the class data lexicographicly
sort -t ',' -k5 -d Q2_cut_class.txt > Q2_sort_lexicographically.txt

# count how many of each class are in the largest 25 sepal length
uniq -c Q2_sort_lexicographically.txt > topsepallength.txt

