# Python Setup

This script installs a specific version of Python using the `deadsnakes` PPA on Ubuntu.

## Usage

Using the main setup entry point:
```bash
bash setup.sh python <version>
```

Directly:
```bash
sudo bash scripts/python/script.sh <version>
```

- `<version>`: The Python version to install (e.g., `3.10`, `3.11`, `3.12`).

## Features

- Adds `ppa:deadsnakes/ppa` repository.
- Installs Python, `venv`, and `dev` packages for the specified version.
- Ensures all dependencies are up to date.

## Example

```bash
bash setup.sh python 3.11
```
