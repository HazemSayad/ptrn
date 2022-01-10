#!/bin/bash

phrase=$3

lines=$(wc -l $1 | cut -f 1 -d " ")

echo $1 $2 $3 $lines
for ((l=0; l<=$lines; l++))
do
  echo $phrase >> $2
  echo $l
done
