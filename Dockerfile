# Étape 1 : Utiliser une image de base
FROM node:18

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers de l'application dans le conteneur
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier le reste des fichiers
COPY . .

# Étape 6 : Exposer le port utilisé par l'application
EXPOSE 3000

# Étape 7 : Définir la commande pour démarrer l'application
CMD ["npm", "start"]
