# ==============================================================================
# Dockerfile personnalisé pour héberger Uptime Kuma
# ==============================================================================

# Utilise l'image officielle d'Uptime Kuma (version majeure 1)
FROM louislam/uptime-kuma:1

# Uptime Kuma écoute par défaut sur le port 3001
EXPOSE 3001

# Déclaration du volume pour assurer la persistance des données
# (historique, configurations, base de données SQLite)
VOLUME ["/app/data"]

# L'image parente gère déjà l'entrypoint et la commande de démarrage (node server/server.js).
# Vous pouvez ajouter d'autres configurations personnalisées ici si nécessaire.
