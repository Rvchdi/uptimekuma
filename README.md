# Hébergement d'Uptime Kuma avec Docker

Ce projet contient la configuration nécessaire pour héberger votre propre instance d'**Uptime Kuma** en utilisant Docker.

## Contenu du Projet

- `Dockerfile` : Utilise l'image de base officielle `louislam/uptime-kuma:1`, expose le port `3001` et prépare le volume de données.
- `docker-compose.yml` : Permet de lancer facilement le conteneur avec un redémarrage automatique et un stockage persistant nommé (`uptime-kuma-data`).

## Comment Démarrer

### Option 1 : Utiliser Docker Compose (Recommandé)

Docker Compose est le moyen le plus simple et le plus robuste pour lancer et gérer votre conteneur avec persistance des données.

1. Lancez l'application en arrière-plan :
   ```bash
   docker compose up -d
   ```
2. Accédez à Uptime Kuma dans votre navigateur :
   [http://localhost:3001](http://localhost:3001)

### Option 2 : Utiliser uniquement Docker

Si vous préférez utiliser uniquement les commandes Docker classiques :

1. Construisez l'image personnalisée :
   ```bash
   docker build -t mon-uptime-kuma .
   ```
2. Lancez le conteneur avec persistance des données :
   ```bash
   docker run -d --restart=always -p 3001:3001 -v uptime-kuma-data:/app/data --name uptime-kuma mon-uptime-kuma
   ```

### Option 3 : Déploiement sur Railway

Si vous hébergez cette instance sur **Railway** :

1. Connectez votre dépôt GitHub à Railway.
2. Créez un **Volume Railway** (Railway Volume) depuis l'interface de votre service.
3. Configurez le point de montage de ce volume sur `/app/data` (ceci est crucial pour que vos données de monitoring soient persistantes).
4. Railway détectera automatiquement le `Dockerfile` et déploiera l'application sur le port `3001`.

---
*Uptime Kuma est un outil de monitoring simple et performant développé par Louis Lam.*
