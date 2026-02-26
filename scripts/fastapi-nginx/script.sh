#!/usr/bin/env bash

# Usage:
# sudo bash setup_nginx_fastapi.sh api.piuvenduto.it 8000
# arg1 = domain
# arg2 = fastapi port (uvicorn/gunicorn)

set -e

DOMAIN=$1
APP_PORT=${2:-8000}

if [ -z "$DOMAIN" ]; then
  echo "Usage: sudo bash setup_nginx_fastapi.sh <domain> [port]"
  exit 1
fi

echo "Installing nginx + certbot..."
apt update
apt install -y nginx certbot python3-certbot-nginx

echo "Creating nginx config for $DOMAIN..."

cat > /etc/nginx/sites-available/$DOMAIN <<EOF
server {
    listen 80;
    server_name $DOMAIN;

    location / {
        proxy_pass http://127.0.0.1:$APP_PORT;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;

        proxy_read_timeout 60;
        proxy_connect_timeout 60;
        proxy_send_timeout 60;
    }

    client_max_body_size 20M;
}
EOF

echo "Enabling site..."
ln -sf /etc/nginx/sites-available/$DOMAIN /etc/nginx/sites-enabled/$DOMAIN

echo "Testing nginx config..."
nginx -t

echo "Restarting nginx..."
systemctl restart nginx
systemctl enable nginx

echo "Requesting SSL certificate..."
certbot --nginx -d $DOMAIN --non-interactive --agree-tos -m admin@$DOMAIN --redirect

echo "Setting auto-renew..."
systemctl enable certbot.timer

echo ""
echo "Setup complete."
echo "Your API should now be live at:"
echo "https://$DOMAIN"
echo ""
echo "Make sure FastAPI is running on:"
echo "127.0.0.1:$APP_PORT"