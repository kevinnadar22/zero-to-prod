# Python Setup

This script installs a specific version of Python using the `deadsnakes` PPA on Ubuntu.

## Usage

```bash
sudo bash script.sh <version>
```

- `<version>`: The Python version to install (e.g., `3.10`, `3.11`, `3.12`).

## Features

- Adds `ppa:deadsnakes/ppa` repository.
- Installs Python, `venv`, and `dev` packages for the specified version.
- Ensures all dependencies are up to date.

## Example

```bash
sudo bash script.sh 3.11
```
