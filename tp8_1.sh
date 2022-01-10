#!/bin/bash
choice=-1
while [ $choice != 0 ]
do 
echo "
********************************************************
Bonjour choisissez une option :
1 - Ouvrir l'application de file system  
2 - Ouvrir l'application de log
9- Quitter
"
read choice

case "$choice" in 
1) ./TP8.2;;
2) ./TP8.3 ;;
3)break;;
esac 
done