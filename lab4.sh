#!/bin/bash

#1
find . -type f -name "*.csv" -o -name "*.CSV"

#2
find . -type d -name "[aAbB]*" 

#3
find . -type f -name "*.sh"

#4
find . -name "*.sh" -executable

#5
find . -empty -user root

#6
find . -type -l

#7
find . -size +10000c #cM

#8
find . -perm /u=s,g=s -executables #SUID&&GUID

#9
find . -type d -perm -1000 #sticky

#10
find . -mmin -120 #-mtime -1 #day

#11
find /dev -type b,c

#12
find . -empty -type d,f -delet

#13
find . -type f -name '*.sh' -exec mv -t ./dir1/ {} \+

#14
find -type f -readable -exec cp -r {} ./$2 \;

