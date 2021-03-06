#!/bin/bash
echo "-----------------------------------------------------------"
echo "Administration des comptes "
echo "1- Comptes utilisateurs "
echo "2- Groupes"
echo "9- Quitter"

read rep

case $rep in 
1) echo "-----------------------------------------------------------"
   echo "Gestion des comptes"
   echo "1- Lister les comptes "
   echo "2- Modifier un compte"
   echo "3- Revenir au menu précédent"
   echo "4- CHercher un utilisateur"
   echo "5- Quitter"
   read choix 
   case $choix in 
	1) cat /etc/passwd | cut -d ':' -f1 >/home/zied/Desktop/users
	cat /etc/passwd | cut -d ':' -f7 >/home/zied/Desktop/bashes
	cat /etc/passwd | cut -d ':' -f6 >/home/zied/Desktop/homeDirectories
	nb=`cat /etc/passwd | wc -l`

	user='Nom du user : '
	homeDirec=' Home directory : '
	b=' bash:'
	i=1
	while [ $i -le $nb ]
	do 
	
		ch1=`head -$i users | tail -1 `
		ch2=`head -$i homeDirectories | tail -1`
		ch3=`head -$i bashes | tail -1`	
		res=$user$ch1$homeDirec$ch2$b$ch3
		echo $res
		i=$(($i+1))
	done
	rm /home/zied/Desktop/users
	rm /home/zied/Desktop/bashes
	rm /home/zied/Desktop/homeDirectories
		;;
	2) echo "On va changer le mot de passe"
           sudo passwd $(whoami)   	
		;;
	3) ./3_adminisration.bash
		;;
	4)echo "Ecrire le nom de l'utilisateur"
	  read utilisateur
          str=`cat /etc/passwd | grep $utilisateur `
	  echo $str
		;;
	5) exit
   esac	
	;;
2) echo "-----------------------------------------------------------"
   echo "Gestion des groupe"
   echo "1- Lister les groupes"
   echo "2- Modifier un groupe"
   echo "3- Revenir au menu précédent"
   echo "4- Quitter"
   read choix 
   case $choix in 
	1) cat /etc/group
		;;
	2) echo "On va ajouter un groupe"
           echo "Donner le nom du nouveau groupe"
	   read grp
	   sudo groupadd $grp   	
		;;
	3) ./3_adminisration.bash
		;;
	4) exit
   esac	
   
	;;
9) exit
esac 