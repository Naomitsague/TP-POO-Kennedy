Bonjour et Bienvenue dans notre  Application de Gestion d’Objets Volés

Cette application Java permet aux utilisateurs de :

Créer un compte

Se connecter

Déclarer un objet volé

Rechercher un objet volé

Revendiquer un objet s’il leur appartient

 Technologies utilisées

Java Swing pour l’interface graphique

MySQL pour la base de données

JDBC pour la connexion entre Java et MySQL

Fonctionnalités détaillées

1. Création d’un compte (Signup)

Accessible via le bouton "Créer un compte" depuis la page de connexion.

L’utilisateur doit fournir un nom, un email, et un mot de passe.

En cas d’e-mail déjà utilisé ou champ vide, un message d’erreur s’affiche :

Veuillez remplir tous les champs.

Cet e-mail est déjà utilisé. (si géré côté base ou avec contrôle)

2. Connexion

Depuis la fenêtre principale (LoginFrame).

L’utilisateur entre son email et mot de passe.

En cas d’erreur de saisie :

Échec de la connexion.

3. Accueil utilisateur connecté

Une fois connecté, l'utilisateur arrive sur la fenêtre AccueilFrame.

Deux fonctions principales :

Déclarer un objet volé

Rechercher un objet volé

4. Déclaration d’un objet volé

Accessible via le bouton "Déclarer un objet volé".

L’utilisateur saisit :

Nom de l’objet

Description

Lieu de vol

Date de vol

Numéro de série

L’objet est lié automatiquement à l’utilisateur connecté.

En cas d’erreur (ex. champ vide, date mal formatée), des messages s’affichent :

Veuillez remplir tous les champs.

Date invalide.

5. Recherche d’un objet volé

Champ de texte + bouton "Rechercher un objet volé".

Si un ou plusieurs objets sont trouvés (basés sur le nom) :

Nom: téléphone
Description: Samsung Galaxy S
Date de vol: 2024-05-03
Lieu de vol: Yaoundé
Numéro de série: ABC123XYZ
------------------------

Sinon, message :Aucun objet trouvé.

6. Revendiquer un objet trouvé

Après la recherche, une zone de texte apparaît sous les résultats.

L’utilisateur peut saisir un message pour revendiquer l’objet.

Le bouton "Envoyer la revendication" enregistre dans la base dans la table messages_revendication.

En cas d'erreur :

Veuillez entrer un message. (si vide)

Veuillez d'abord rechercher un objet et en sélectionner un. (si aucun résultat avant le clic)
