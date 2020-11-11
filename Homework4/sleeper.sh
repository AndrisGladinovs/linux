#!/bin/bash
USER=Andris
echo "Start of the script"
for run in {1..100}
do

date +"%H:%M:%S"
ps -ef | tail +2 | wc -l
echo $run
#sleep 5
sleep 1

done

echo "Show information about the  processor"
cat /proc/cpuinfo | head -1

echo "Here is information about the OS"
awk -F = '$1=="NAME" {print$2}' /etc/os-release

touch /tmp/andris/$run.txt

echo "The end of the script"
