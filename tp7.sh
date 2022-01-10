#!/bin/bash
choice=-1
while [ $choice != 0 ]
do 
echo "
********************************************************
Bonjour choisissez une option :
1 - ajouter une tache automatisé  
2 - Afficher la liste des taches automatisés
3- Supprimer une tache automatisés
4- Supprimer tous les crontab 
0 - Exit
"
read choice

case "$choice" in 
1)echo "Vous aller entrer les informations pour avoirs le format suivant :"
echo "minute hour day_of_month month day_of_week command_to_run"
echo "Donner la tache que vous voulez automatiser ?"
read tache
echo "Donner la fréquence des minutes (entre 0-59) ?"
read minute 
echo "Donner la fréquence des heures (entre 0-23) ?"
read heure
echo "Donner Jour du mois (entre 1-31) ?"
read jourDuMois
echo "Donner le mois (1-12 ou JAN-DEC) ?"
read mois
echo "Donner la jour de la semaine ?(0-6 ou DIM-SAM) ?"
read jour
crontab -l>crontest
echo "$minute $heure $jourDuMois $mois $jour $tache">>test
crontab crontest 
rm crontest;;
2) crontab -l ;;
3) echo "Donner la tache que vous voulez supprimer ?"
read tache
crontab -l | grep -v "$tache"| crontab - ;;
4) crontab -r;;
esac 
done
