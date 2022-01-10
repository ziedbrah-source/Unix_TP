#!/bin/bash
choice=-1
while [ $choice != 0 ]
do 
echo "
********************************************************
Bonjour choisissez une option :
1 - sauvegarder 
2 - Restaurer
3-  supprimer un fichier 
0 - Exit
"
read choice

case "$choice" in 
1) echo "donner le dossier a compresser ?"
read path
echo "la taille du dossier a compressé est :"
du -s $path 
echo "donner la destination ?"
read destination
tar -cvf $destination $path ;;
2) read path 
   tar -xvf $path ;;
3) read path 

 ls -l $path 
 echo "donner le nom du fichier a supprimer ?"
 read  nom
 rm -f $nom
esac 
done