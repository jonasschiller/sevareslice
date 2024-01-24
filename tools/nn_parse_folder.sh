#!/bin/bash

source nn_parse.sh
#loop over all folders in the directory, files we are interested are called testresults_run00 - testresults_runXX. Loop over all of them

for i in $(ls -d */); do
    #loop over all files in the folder
    for j in $(ls $i); do
        #check if file contains testresults_run
    if [[ $j == *"testresults_run"* ]]; then
        if [[ $j == *".csv" ]]; then
            echo "nn_parse not called with $i/$j $i/$j.csv"
        else
            echo "nn_parse called with $i/$j $i/$j.csv"
            nn_parse $i/$j $i/$j.csv
        fi
    fi
    done
done

