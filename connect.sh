#!/bin/sh


# Couleurs pour les messages
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

cleanup() {
    echo "${YELLOW}Arrêt des containers Docker...${NC}"
    docker compose down
    echo "${GREEN}Containers arrêtés.${NC}"
}

trap cleanup EXIT INT TERM

echo "${BLUE}Démarrage des containers Docker...${NC}"
docker compose up -d

echo "${YELLOW}Attente que PostgreSQL soit prêt...${NC}"
sleep 3


echo "${BLUE}Connexion à la base de données...${NC}"
echo ""

docker compose exec postgres psql -U guedesal -d guedesal_db

echo ""
echo "${GREEN}Déconnexion de la base de données.${NC}"
