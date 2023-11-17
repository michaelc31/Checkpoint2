# Checkpoint2_Exercices1

## Q1-1 Pourquoi le ping avec les adresses IP des machines ne fonctionnent pas ?

![IMGQ1-1-1](https://github.com/michaelc31/Checkpoint2/blob/main/Q1-1-1.PNG?raw=true)

sur l'image precedente, nous avons lancer un `IPCONFIG` et un `PING` afin de s'apercevoir que les 2 machine ne peuvent pas communiquer car elle sont sur le reseau `172.16.10.0/24` pour le serveur et `172.16.100.0/24` pour le client se qui ne permet pas la communication car les 2 machines ne sont pas sur le meme reseau. 
Pour que les 2 machine puissent communiquer je vais aller sur le client est modifie l'adresse IP de la carte reseau afin que le client soit sur le reseau `172.16.10.0/24` en lui entrant comme adresse `172.16.10.50/24` et je refait un `PING` afin de verifie la communication entre les machines.

![IMGQ1-1-2](https://github.com/michaelc31/Checkpoint2/blob/main/Q1-1-2.PNG?raw=true)

## Q1-2 Le ping avec le nom des machines ne fonctionne pas.

Probleme de reset de config sur la VM je passe a la suite tout marche voir image 

![IMGQ1-2](https://github.com/michaelc31/Checkpoint2/blob/main/Q1-2.PNG?raw=true)

## Q1-3 Modifie la configuration réseau du client pour qu'il soit en DHCP.

Sur mon client, je vais aller configurer la carte reseau afin d'etre en DHCP et je vais lancer un `PING` afin de voir si le serveur me fourni bien une adresse IP et laquelle

![IMGQ1-3-1](https://github.com/michaelc31/Checkpoint2/blob/main/Q1-3-1.PNG?raw=true)

on voi bien que le serveur DHCP nous as fourni une adresse IP en l'occurence l'adresse `172.16.10.20/24` et si l'on compare avec la zone d'adressage fourni par le serveur, cette zone s'etend de l'adresse `172.16.10.1 a 172.16.10.254` mais sur les lignes du dessous on voit qu'il y a des adresse Exclus par plage de `172.16.10.1 a 172.16.10.19` et `172.16.10.241 a 172.16.10.254` donc le serveur ne pourra nous fourni qu'en 1ere adresse pour un clien l'adresse `172.16.10.20/24` qu'il nous as donnée

![IMGQ1-3-2](https://github.com/michaelc31/Checkpoint2/blob/main/Q1-3-2.PNG?raw=true)

## Q1-4 Est-ce que ce client peut avoir l'adresse IP 172.16.10.15 en DHCP ?

Malgré les exclusion de plage d'adresse on peut tout a fait imposer l'adresse `172.16.10.15` au client avec un reservation sur le serveur DHCP en indiquant l'adresse de reservation, l'adresse MAC de la machine client 

![IMGQ1-4-1](https://github.com/michaelc31/Checkpoint2/blob/main/Q1-4-1.PNG?raw=true)

ca marche, mais comme l'on ne sait pas a quoi sont reserver les plage d'adresse exclus cela pourrai engendré des erreurs et autre conflit du coup se n'est pas conseiller.

![IMGQ1-4-2](https://github.com/michaelc31/Checkpoint2/blob/main/Q1-4-2.PNG?raw=true)
