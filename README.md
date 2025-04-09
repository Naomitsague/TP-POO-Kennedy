Gestion des Objets Volés
Description

Gestion des Objets Volés est une application Java Swing qui permet aux utilisateurs de créer un compte, se connecter, déclarer un objet volé, rechercher un objet volé et revendiquer la propriété d’un objet s’il est retrouvé. L’application interagit avec une base de données MySQL pour stocker et récupérer les informations.
Fonctionnalités

    Créer un compte : Permet à un utilisateur de s’enregistrer avec son nom, email et mot de passe.

    Connexion : Authentifie l’utilisateur via son email et son mot de passe.

    Déclarer un objet volé : Enregistre un objet volé avec nom, description, date de vol, lieu de vol, numéro de série et l'ID du propriétaire connecté.

    Rechercher un objet volé : Recherche par nom les objets déclarés volés dans la base de données.

    Revendiquer un objet : Si l’objet volé est retrouvé, l’utilisateur peut envoyer un message de revendication via un champ de texte.

    Enregistrement des messages de revendication : Chaque message est stocké dans la base de données dans la table messages_revendication.

Prérequis

    Java Development Kit (JDK) 21

    IDE Java (ex : VS Code, IntelliJ, Eclipse)

    MySQL Server

    MySQL Connector/J (ex: mysql-connector-java-9.2.0.jar)


    
