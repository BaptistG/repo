#!/bin/bash
cd devopsshared
for i in $(seq -w 1 30)
do
mkdir "devopsshared_$i"
cd "devopsshared_$i"
for j in $(seq 1 5)
do
touch "devopsshared_$i""_file$j.txt"
done
cd ..
done
mkdir "devopsshared_backup"
cd ..
