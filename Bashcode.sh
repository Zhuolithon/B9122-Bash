#!/bin/bash

# download data
curl -s -O https://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data

# cut to extract the 1st and 5th fields
cut -d ',' -f 1,5 bezdekIris.data > Q2_cut.txt

# sort to sort the data by sepal length starting with the largest
sort -k 1 -r bezdekIris.data > Q2_sort.txt