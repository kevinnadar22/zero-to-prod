# PostgreSQL Docker Setup

This script sets up a PostgreSQL instance using Docker.

## Usage

Using the main setup entry point:
```bash
bash setup.sh postgres [password]
```

Directly:
```bash
sudo bash scripts/postgres/script.sh [password]
```

- `[password]`: The password for the `postgres` user (default is `postgres`).

## Features

- Verifies Docker installation.
- Pulls and runs the latest `postgres` image.
- Maps port `5432` to the host.
- Names the container `postgres-container`.

## Notes

- Requires `docker` to be installed.
- Ensure port `5432` is not already in use on the host.
