# Docker + Docker Compose Setup

This script automates the installation of Docker and Docker Compose on Ubuntu systems.

## Usage

```bash
sudo bash script.sh
```

## Features

- Installs required dependencies (`ca-certificates`, `curl`, `gnupg`).
- Adds official Docker GPG key.
- Configures Docker repository for APT.
- Installs `docker-ce`, `docker-ce-cli`, `containerd.io`, `docker-buildx-plugin`, and `docker-compose-plugin`.
- Adds the current user to the `docker` group.

## Notes

- Requires `sudo` privileges.
- After running, you may need to log out and back in for group changes to take effect.
