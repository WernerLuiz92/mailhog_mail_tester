#!/bin/bash

# Obter o Gateway do Docker network
MAIL_HOST=$(docker network inspect mailhog_default | jq -r '.[0].IPAM.Config[0].Gateway')
# Obter a porta do container Mailhog
MAIL_PORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "1025/tcp") 0).HostPort}}' smtp_mailhog)

echo -e "\n\nMailhog is running on ${MAIL_HOST}:${MAIL_PORT}"

# Imprimir as instruções
echo -e "Remember to add this to your Laravel Project's .env\n\n"
echo -e "# Mailhog configuration"
echo "MAIL_MAILER=smtp"
echo "MAIL_HOST=${MAIL_HOST}"
echo "MAIL_PORT=${MAIL_PORT}"
echo "MAIL_USERNAME="
echo "MAIL_PASSWORD="
echo "MAIL_ENCRYPTION="
echo "MAIL_FROM_ADDRESS='your@email.com'"
echo "MAIL_FROM_NAME=\"\${APP_NAME}\""