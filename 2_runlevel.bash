#!/bin/bash
echo "arret et démarrage du système"
echo "1- Afficher les messages du démarrages"
echo "2- Afficher le niveau d'exécution actuel"
echo "3- Changer le niveau d'exécution "
echo "4- Afficher les applications de l'arret et démarrage du système"
echo "5- Installer une application dans un niveau d'exécution "
echo "9- Quiter"
read a 
case $a in
	1) dmesg
	   ;;
	2) who -r
	   ;;
	3) echo "Donner le niveau cicble"
	   read r
	   init $r
	   ;;
	4) ls /etc/init.d/*
	   ;;	
	5) echo "Donner le chemin complet de l'application"
	   read file
	   sudo cp $file /etc/init.d/
	   echo "Dans quel niveau d'execution $file va s'exécuter "
	   read runLevel
	   sudo ln -s /etc/init.d/$(basename $file) /etc/rc6.d/
	   ;;
	9) exit
esac
