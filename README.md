# Admin Serveur Web

**Objectifs
L’objectif de ce TP sera de réaliser plusieurs exercices sur le
développement de shell script.**

**Exercice 1 :**
Réaliser le script respectant les règles suivantes :
  * Script auquel on passe en argument une liste de fichiers.
  * Le script va d'abord vérifier que l'utilisateur a bien saisi des
arguments au moment de lancer le script. Si ce n'est pas le cas, alors
le script sort avec une erreur 2.
  * Le script va vérifier si ces fichiers existent ou n'existent pas et nous
afficher la réponse à l'écran.
  * Les commandes doivent être intégrées à des fonctions. On souhaite
deux fonctions distinctes, une pour la vérification du nombre
d'arguments et l'autre pour la vérification de l'existence des fichiers.

**Exercice 2 :**
Faire un script prenant deux arguments :
  * Premier argument : nom d'un fichier
  * Deuxième argument : peut prendre plusieurs valeurs comme copy
(copie le fichier dans le répertoire /tmp/script), delete (supprime le
fichier) et read (lire le fichier).
Il faudra créer une fonction qui vérifiera que le fichier rentré en argument
existe bien, et utiliser les case pour les différentes possibilités).
**Note : Utilisez le ‘case’.**

**Exercice 3 :**
Ecrire un script capable de vérifier si le nom d'utilisateur saisi correspond à
un nom d'utilisateur déjà existant.
Quelques pistes :
  * Utiliser le contenu du fichier /etc/passwd
  * Se servir de la commande cut
**Exercice 4 :**
Ecrire un script capable de vérifier si le nom du groupe saisi correspond à
un nom de groupe existant.
Pistes :
  * Utiliser le contenu du fichier /etc/group
  * Se servir de la commande cut

**Exercice 5 :**
Ecrire un script capable d'effectuer la création et la suppression d'un
utilisateur.
Le script doit afficher un menu permettant à l'utilisateur de choisir s'il
souhaite supprimer ou créer l'utilisateur.
Le script doit vérifier si l'utilisateur existe déjà.
**Pistes :**
  * Utiliser le script réalisé à l'exercice 3
  * Utiliser la fonction case pour laisser le choix à l'utilisateur
**Exercice 6 :**
Script capable d'effectuer la création et la suppression d'un groupe.
Le script doit afficher un menu permettant à l'utilisateur de choisir s'il
souhaite supprimer ou créer le groupe.
Le script doit vérifier si le groupe existe déjà.
**Pistes :**
  * Utiliser le script réalisé à l'exercice 4
  * Utiliser la fonction case pour laisser le choix à l'utilisateur

**Exercice 7 :**
Ecrire un script capable de créer ou de supprimer un fichier.
  * Menu permettant de laisser le choix à l'utilisateur.
  * Avant de créer un fichier, le script doit d'abord vérifier si le fichier
existe.
  * Avant de supprimer un fichier, le script doit d'abord vérifier si le fichier
existe.

**Exercice 8 :**
Ecrire un script capable de modifier les droits de propriété sur un fichier.
Avant de modifier les propriétés sur un fichier, le script doit vérifier qu'il
existe bien.
Le script doit demander le nom du nouvel utilisateur et du nouveau groupe
propriétaires.

**Exercice 9 :**
Ecrire un script capable de modifier les droits sur le fichier entré par
l'utilisateur, du propriétaire, du groupe, et des autres.
Le script doit vérifier que le fichier existe bien.
Le script demande d'abord les nouveaux droits pour l'utilisateur
propriétaire, puis pour le groupe, et enfin pour les autres.


**Consignes :**
Envoyez le projet dans un repository git sous le nom suivant :
**Nom_prenom_classe_annee_admin**
A rendre pour Lundi 12 Octobre 2020 avant 00h00.


