# ==============================================================================
# Dockerfile personnalisé pour héberger Uptime Kuma
# ==============================================================================

# Utilise l'image officielle d'Uptime Kuma (version majeure 1)
FROM louislam/uptime-kuma:1

# Force l'écoute sur IPv4 (0.0.0.0) au lieu de l'IPv6 par défaut (::)
# et garantit l'utilisation du port 3001 pour éviter les erreurs de routage sur Railway.
ENV UPTIME_KUMA_HOST=0.0.0.0
ENV PORT=3001

# Uptime Kuma écoute par défaut sur le port 3001
EXPOSE 3001

# Note pour Railway : N'utilisez pas l'instruction VOLUME ici (non supportée).
# Configurez à la place un "Railway Volume" monté sur "/app/data" depuis votre tableau de bord Railway.

# L'image parente gère déjà l'entrypoint et la commande de démarrage (node server/server.js).
# Vous pouvez ajouter d'autres configurations personnalisées ici si nécessaire.
