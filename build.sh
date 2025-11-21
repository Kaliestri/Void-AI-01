#!/usr/bin/env bash
set -e

# Instalar Python 3.10.12 usando pyenv (esto puede ser lento)
PYTHON_VERSION="3.10.12"
pyenv install -s $PYTHON_VERSION
pyenv global $PYTHON_VERSION

pip install --upgrade pip
pip install -r requirements.txt
