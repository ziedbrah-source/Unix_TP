#!/bin/bash
echo "Merci de faire un choix ";
echo "1- Pour afficher tous les modules ";
echo "2- Pour supprimer le module de la souris";
echo "3- pour activer le module de la souris ";
echo "4- pour plus d'informations sur le module de la souris "; 
read choix ;
if [ $choix == 1 ] ; 
then
	lsmod;

elif [ $choix == 2 ] ; 
then
	

	sudo rmmod psmouse;
	echo " le module psmouse a été supprimé avec succès "
	
elif [ $choix == 3 ] ; 
then
	
	sudo modprobe psmouse
	echo "le mode psmouse a été activé "
elif [ $choix == 4 ] ; 
then	
	

	modinfo psmouse;
else 
	echo "Choix invalide";
fi;