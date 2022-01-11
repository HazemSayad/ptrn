#!/bin/bash

## <inputfile> <outputfile> "string"

## input parameters
inputfile=$1
outputfile=$2
phrase=$3

## generated variabls
lines=$(wc -l $1 | cut -f 1 -d " ")

## effective script
echo Creating $lines based on $inputfile into $outputfile with the pattern: "$phrase"

for ((l=1; l<=$lines; l++))
do
  echo "" > $outputfile
  echo $phrase >> $outputfile
done
