#!/bin/bash
n=30
while [[ n -ne 0  ]];
do 
echo 
((n=n-1))
echo "il vous reste $n seconde"
sleep 1
done


#sudo bash TP4.2.sh >> /dev/pts/1 
#le fichier /dev/pts/ contient la liste des terminals