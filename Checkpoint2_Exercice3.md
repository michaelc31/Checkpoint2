# Checkpoint2_Exercice3

## Q3-1 Quel est le matériel réseau A ? Quel est son rôle sur ce schéma vis-à-vis des ordinateurs ?

Le materiel de Reseau A est un switch et son role vis-a-vis des ordinateur sur le schema est de permettre l'intercommunication des machines qui sont sur le meme reseau et permet la liason au routeur B

## Q3-2 Quel est le matériel réseau B ? Quel est son rôle pour le réseau 10.10.0.0/16 ?

Le materiel de reseau B est un routeur et son role pour le reseau 10.10.0.0/16 et de permettre la communication avec divers reseau auquel il est relie et ds notre cas il sert aussi de passerelle par defaut pour les ordinateur du reseau 10.10.0.0/16

##Q.3.3 Que signifie f0/0 et g1/0 sur l’élément B ?

Sur l'element B F0/0 signifie FastEthernet 0/0 et g1/0 signifie GigabitEthernet se sont des interface du routeur qui permettent la communication.

## Q.3.4 Pour l'ordinateur PC2, que représente /16 dans son adresse IP ?

Pour l'ordinateur PC2 le /16 represente sont CIDR ou sont masque de sous reseau /16 correspond au masque 255.255.0.0

## Q3.5 Pour ce même ordinateur, que représente l'adresse 10.10.255.254 ?

l'adresse 10.10.255.254 represente l'adresse du routeur B sur l'interface f0/0 

## Q.3.6 Pour les ordinateur PC1, PC2, et PC5 donne :

|  PC |L'adresse de réseau |La première adresse disponible |La dernière adresse disponible |L'adresse de diffusion|
|---|--------------- |-------------------------------|-------------------------------|----------------------|
|PC1|10.10.0.0           |10.10.0.1                      |10.10.255.254                  |10.10.255.255|
|PC2|10.11.0.0           |10.11.0.1                      |10.11.255.254                  |10.11.255.255|
|PC5|10.10.0.0           |10.10.0.1                      |10.11.255.254                  |10.11.255.255|

les calcul pour trouver les adresses: PC1 : 10.10.4.1/16 nous donne 10.10.4.1 255.255.0.0 

soit 00001010 00001010 00000100 00000001 = 10.10.4.1

     11111111 11111111 00000000 00000000 = 255.255.0.0
     
     00001010 00001010 00000000 00000000 = 10.10.0.0 adresse reseau

et pour le pc5 :10.10.4.7/15 nous donne 10.10.4.7 255.254.0.0

soit 00001010 00001010 00000100 00000111 = 10.10.4.7

     11111111 11111110 00000000 00000000 = 255.254.0.0
     
     00001010 00001010 00000000 00000000 = 10.10.0.0 adresse reseau

Pc2 10.11.80.2/16 nous donne 10.11.80.2 255.255.0.0

soit 00001010 00001011 01010000 00000010 = 10.11.80.2

     11111111 11111111 00000000 00000000 = 255.255.0.0
     
     00001010 00001011 00000000 00000000 = 10.11.0.0 adresse reseau

## Q.3.7 En t'aidant des informations que tu as fourni à la question 3.6, et à l'aide de tes connaissances, indique parmi tous les ordinateurs du schéma, lesquels vont pouvoir communiquer entre-eux.

grace au divers calcul je peux en deduire que PC1 PC3 PC4 et PC5 communique entre eux, PC2 et PC5 aussi mais que PC2 ne communique pas avec PC1 PC3 et PC4

## Q.3.8 De même, indique ceux qui vont pouvoir atteindre le réseau 172.16.5.0/24

le reseau 172.16.5.0/24 peut etre attein par les PC1, PC3 PC4 et PC5 

## Q.3.9 Quel incidence y-a-t'il pour les ordinateurs PC2 et PC3 si on interverti leur ports de connexion sur le matériel A ?

Aucune le switch est un materiel auquel aucun reseau ou adresse IP n'est affecter il sert juste de liaison

## Q.3.10 On souhaite mettre la configuration IP des ordinateurs en dynamique. Quelles sont les modifications possible ?

### Fichier1
## Q.3.11 Sur le paquet N°5, quelle est l'adresse mac du matériel qui initialise la communication ? Déduis-en le nom du matériel.

ladresse MAC source qui initialise la communication est 00:50:79:66:68:00 je peux en deduire qu'il s'agit d'une carte reseau du PC1

## Q.3.12 Est-ce que la communication enregistrée dans cette capture a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.

la communication enregistrée dans la capture a réussi car on voi bien la reussite de la requete ping et ca communique entre PC1 10.10.4.1 (00:50:79:66:68:00) et PC4 10.10.4.2 (00:50:79:66:68:03)

## Q.3.13 Dans cette capture, à quel matériel correspond le request et le reply ? Donne le nom, l'adresse IP, et l'adresse mac de chaque materiel.

dans cette capture, le request et le reply correspond a une requete ping ICMP, les materiel sont PC1 10.10.4.1 (00:50:79:66:68:00) et PC4 10.10.4.2 (00:50:79:66:68:03)

## Q.3.14 Dans le paquet N°2, quel est le protocole encapsulé ? Quel est son rôle ?

le protocole encapsule est le protocole ARP son role est permettre la communication entre des périphériques d'un réseau lorsque seuls les adresses IP sont connues

## Q.3.15 Quels ont été les rôles des matériels A et B dans cette communication ?

les roles des materiel A et B on étais simple l'un a fait un requete de ping l'autre a repondu

### Fichier2
## Q.3.16 Dans cette trame, qui initialise la communication ? Donne l'adresse IP ainsi que le nom du matériel.

le materiel qui initialise la communication est 10.10.80.3 c'est la carte reseau d'un poste client PC3

## Q.3.17 Quel est le protocole encapsulé ? Quel est son rôle ?

le protocole encapsule est le protocole ICMP son role fournir les informations sur l'état du réseau, ainsi que pour signaler les erreurs rencontrées lors de la transmission des données 

## Q.3.18 Est-ce que cette communication a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.

la commmunication n'as pas été reussi car le ping s'effectue sur un autre reseau du coup pas de reponse

## Q.3.19 Explique la ligne du paquet N° 2

le ping ne s'effectuant pas c'est un retour de la passerelle par defaut qui reviens indiquant l'echecs de la communication

## Q.3.20 Quels ont été les rôles des matériels A et B ?


### Fichier3
## Q.3.21 Dans cette trame, donne les noms et les adresses IP des matériels sources et destination.

les adresse IP sont: 

10.10.4.2  adresse source 

172.16.5.253 adresse destionnation

## Q.3.22 Quelles sont les adresses mac source et destination ? Qu'en déduis-tu ?

adresse MAC sources ca:01:da:d2:00:1c

adresse MAC destination ca:03:9e:ef:00:38

## Q.3.23 A quel emplacement du réseau a été enregistré cette communication ?

cette communication à été enregistré au niveau du routeur R2
