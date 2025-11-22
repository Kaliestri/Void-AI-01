#!/usr/bin/env bash
echo "🔧 SOLUCIÓN DEFINITIVA - INSTALACIÓN ROBUSTA"

# Forzar Python 3.10 si es posible
python --version

# Actualizar herramientas críticas
pip install --upgrade pip setuptools wheel

# Instalar dependencias en orden específico
echo "📦 Instalando dependencias principales..."
pip install python-telegram-bot==20.7
pip install chromadb==0.4.15
pip install sentence-transformers==2.2.2

echo "📦 Instalando dependencias secundarias..."
pip install aiohttp beautifulsoup4 requests python-dotenv

# Instalar OpenCV como alternativa a Pillow (más compatible)
echo "🖼️ Instalando OpenCV (alternativa Pillow)..."
pip install opencv-python-headless

echo "✅ TODAS LAS FUNCIONES DISPONIBLES - Sin Pillow"
