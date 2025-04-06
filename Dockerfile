# 1. Bazowy obraz Node.js (dobrze, że bierzesz 20!)
FROM node:20

# 2. Ustawienie katalogu roboczego
WORKDIR /app

# 3. Kopiujemy package.json i package-lock.json
COPY package*.json ./

# 4. Instalujemy zależności produkcyjne
RUN npm install --production

# 5. Kopiujemy resztę plików do obrazu
COPY . .

# 6. Budujemy projekt Strapi w trybie produkcyjnym
ENV NODE_ENV=production
RUN npm run build

# 7. Wystawiamy port Strapi
EXPOSE 1337

# 8. Komenda startowa kontenera
CMD ["npm", "run", "start"]
