#!/usr/bin/env bash

# Usage: sudo bash scripts/postgres/script.sh <password>
# Example: sudo bash scripts/postgres/script.sh my_secure_password
# arg1 = postgres password (optional, default: postgres)

set -e

PG_PASSWORD=${1:-"postgres"}

echo "Setting up PostgreSQL container..."

# Check if docker is installed
if ! command -v docker &> /dev/null; then
  echo "Error: Docker not found. Please install Docker first (bash setup.sh docker)."
  exit 1
fi

docker run --name postgres-container -e POSTGRES_PASSWORD=$PG_PASSWORD -p 5432:5432 -d postgres

echo "PostgreSQL container started with password: $PG_PASSWORD"
