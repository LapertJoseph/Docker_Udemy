# Utilise l'image node versio 14
FROM node:14
# Dossier de travail est /app
WORKDIR /app
# Copie le package.json
COPY package.json .
# execute la commande npm install
RUN npm install
# Copie le reste du code 
COPY . .
# Utilise le port 3000 pour l'exterieur
EXPOSE 3000
# Execute app.msj depuis la commande node car définis au début en tant qu'image.
CMD [ "node", "app.mjs" ]