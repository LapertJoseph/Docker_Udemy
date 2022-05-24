# pull l'image de node sur docker hub
FROM node

# On définis un espace de travail et toutes les commande ou sous commandes seront dans cet espace de travail
WORKDIR /app

# On copie tout le code que j'ai en local avec le premier "." et tu le copie dans le seconde '.'
COPY . /app

# Run la commande pour installer toutes les dépendances requises pour l'application.
RUN npm install

# Besoin de lui dire de l'exposer sur un port pour lancer le container
EXPOSE 80

# CMD permet de RUN mais pas dans l'image mais dans le container de l'image
# On lui dis de lancer server.js avec node 
CMD ["node", "server.js"]

# docker build = Creer une image en rapport avec le Dockerfile 
# docker run = run l'image dans un container pour pouvoir lancer l'application
# docker run -p {PORT de notre choix :PORT définis dans l'app} <= Mandatory lors des dockers run sinon l'app est pas disponible
# docker ps = permet de voir les process en cours  si on rajoute le flag '-a' permet de voir également les process cachés
