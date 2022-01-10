#!/bin/bash
echo "la liste de toute les processus sont : " 
ps -ef
echo "veiller s'il vous plait entrer le PID pour afficher leur parents: "
read pid 
 ppid=$(ps --pid $pid -o ppid | tail -n +2 | sed 's/^ *//g')
 while [[ $ppid -ne 0 ]];
 do
 echo "$ppid" 
 ppid=$(ps --pid $ppid -o ppid | tail -n +2 | sed 's/^ *//g')
 pid=ppid
 done
 echo "$ppid" 
