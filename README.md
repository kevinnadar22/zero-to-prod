
# zero to prod

From bare machine to working dev/server stack in one command.

zero-to-prod is an open-source bootstrap toolkit that automates the boring setup:
Python installation, Docker + Compose, Postgres containers, domain configuration, HTTPS with Certbot, and more.

Designed for quick, repeatable provisioning of developer machines and servers.

---

## Features

- Modular scripts, easy to extend
- One-command environment setup

---

## Usage

Run only what you need:

```bash
bash setup.sh docker
bash setup.sh python=3.10
bash setup.sh postgres
```

---


## Goal

Make machine and server setup fast, repeatable, and boring.

No manual steps. No scattered notes. Just run one command.

---

## Roadmap

* OS detection (Ubuntu/Debian/Arch)
* Idempotent installs
* CLI flags support
