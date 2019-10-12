#!/bin/bash

# download data
curl -s -O https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data

# cut to extract the 1st and 5th fields
cut -d ',' -f 1,5 bezdekIris.data > Q2_cut.txt

# sort to sort the data by sepal length starting with the largest
sort -k 1 -r bezdekIris.data > Q2_sort.txt

# head with an argument to view the top 25 entries
head -n 25 bezdekIris.data > Q2_head.txt

# cut to then extract only the class (which is now the fifth field)
cut -d ',' -f 5 bezdekIris.data > Q2_cut_class.txt