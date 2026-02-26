# FastAPI + Nginx + Certbot Setup

This script sets up Nginx as a reverse proxy for a FastAPI application, including automatic SSL certificate generation with Let's Encrypt.

## Usage

```bash
sudo bash script.sh <domain> [port]
```

- `<domain>`: The domain name for your FastAPI application (e.g., `api.example.com`).
- `[port]`: The internal port where FastAPI is running (default is `8000`).

## Features

- Installs Nginx and Certbot.
- Generates Nginx configuration for your domain.
- Automatically enables the site and tests the configuration.
- Requests SSL certificate from Let's Encrypt with auto-redirection.
- Configures auto-renewal for certificates.

## Prerequisites

- Ubuntu/Debian system.
- `sudo` access.
- Port 80 and 443 open.
- DNS A record pointing your domain to this server's IP.
