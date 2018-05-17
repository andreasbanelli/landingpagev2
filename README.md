Ce projet a été crée par Andréas

Le projet : Playlist.io va ranger et organiser vos vidéos sur Youtube à votre place de manière intelligente



Pré-requis et installation :

1 - Veuillez cloner ce repo sur votre machine 
2 - Se rendre dans le dossier souhaité, et effectuer cette ligne de commandes suivante pour initialiser le fonctionnement :

  $ bundle install --without production && rails db:migrate

La conception
Je suis parti de cette v1 de la Lp : https://protected-everglades-17217.herokuapp.com
j'ai voulu l'améliorer mais cela n'a pas marché sur Heroku. 

Voilà les améliorations ajoutées. 

- utilisation de oauth de google : j'ai ajouté un signin/login via un compte google. 
- utilisation de la gem figaro, cela me permet de cacher mes passwords/id quand je push sur github
- action mailer : chaques users reçoit un mail de bienvenu quand il s'inscrit sur le site. 

Il y a des choses à revoir, les animations javascript ne sont pas passées, l'image du background n'est pas centrée comme voulu.


Acquisition d'une base de données de users

création d'un bot twitter qui envoie un tweet à chaque personne qui utilise le mot "youtube" ou "soundcloud". 
