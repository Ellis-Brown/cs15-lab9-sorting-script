#!/bin/sh
# Ellis Brown , 11/16/2021
# Coauthored by Copilot 
# Assistance from Jackson Warhover : )
# Comp Cat = 
# Testing script for lab 8, just runs tests, lol.
# If you don't have permission, type "chmod -x testing_script"


TIMEARRAY=" 100 1000 10000"
AGLOS=" insertionAux insertionPlace selectionAux selectionPlace "
AGLOS_SHORT_NAME=" mergesort quicksort "
echo ""
echo "Running testing script to compare runtimes."
echo "" > ./RESULT.md
echo "# Sorting times: " >> ./RESULT.md

echo "| Sorting Algo |   100 -r   | 1000 -r    | 10000 -r   | 100 dec    | 1000 dec   | 10000 dec " >> ./RESULT.md 
echo '| ------------ | ---------- | ---------- | ---------- | ---------- | ---------- | ---------- |' >> ./RESULT.md

# run sorting algorithms lol
for sort in $AGLOS; do
    echo "Currently sorting: ${sort}"
    echo -n "| ${sort} | " >> ./RESULT.md
    echo -n $'\t' >> ./RESULT.md
    for i in $TIMEARRAY; do
        ./sort -r $i ${sort}>> ./RESULT.md
        echo -n "  |  ">> ./RESULT.md
    done
    for i in $TIMEARRAY; do
        ./count $i 0   | ./sort -f - ${sort}>> ./RESULT.md 
        echo -n "  |  ">> ./RESULT.md
    done
    echo ''>> ./RESULT.md
done
for sort in $AGLOS_SHORT_NAME; do
    echo "Currently sorting: ${sort}"
    echo -n "| ${sort} |" >> ./RESULT.md
    echo -n $'\t\t' >> ./RESULT.md
    for i in $TIMEARRAY; do
        ./sort -r $i ${sort}>> ./RESULT.md
        echo -n "  |  ">> ./RESULT.md
    done
    for i in $TIMEARRAY; do
        ./count $i 0   | ./sort -f - ${sort}>> ./RESULT.md 
        echo -n "  |  ">> ./RESULT.md
    done
    echo ''>> ./RESULT.md
done