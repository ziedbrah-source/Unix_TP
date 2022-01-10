#!/bin/bash
choice=-1
while [ $choice != 0 ]
do 
echo "
********************************************************
Bonjour choisissez une option :
21- Afficher le log système au démarrage  
22- Suivre le log du /val/log/messages
23- Générer un log
24- Afficher le PID du syslog
99- Revenir au menu précédent
9- Quitter
"
read choice

case "$choice" in 
21) echo "le fichier log qu système contient :"
ls -lrt /var/log;;
22) cat "le fichier /var/log/messages est :" 
cat /var/log/syslog;;
23) echo "donner un tag pour un logger:"
read tag 
echo "donner le message :"
read message
logger -t $tag $message;;
24) echo "le PID du syslog : "
 ps -e | grep log;;
99) ./TP8.1 
break;;
9)break;;
esac 
done