#!/bin/bash
choice=-1
while [ $choice != 0 ]
do 
echo "
********************************************************
Bonjour choisissez une option :
11 - Afficher l'espace disque restant   
12 - Afficher les fichiers volumineux
13- Compresser les fichiers volumineux
14- Supprimer les fichierss volumineux
99- Revenir Au menu principal 
9- Quitter
"
read choice

case "$choice" in 
11) echo "l'espace du disque restante est :"
	df -h;;
12)echo "donner l'emplacement :"
read path
 cd $path 
sudo du -hsx * | sort -rh | head -10 ;;
13) cd /home/zied/Public/TP_linux-main && ./TP5;;
14) echo "donner le path du fichier volumineux"
 read path 
 rm $path;;
99) ./TP8.1 
break;;
9)break;;
esac 
done
