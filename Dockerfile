# Utiliser une image de base Node.js
FROM node:16

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tous les fichiers de l'application
COPY . .

# Exposer le port utilisé par l'application (par exemple 3000)
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
