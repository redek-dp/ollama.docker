#!/bin/bash
set -e

echo "🚀 Iniciando Ollama..."
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

echo "⏳ Aguardando Ollama iniciar..."
sleep 20

echo "📦 Baixando modelo llama3.2..."
docker exec ollama ollama pull llama3.2

echo "🌐 Iniciando Open WebUI..."
docker run -d -p 3000:8080 \
  --add-host=host.docker.internal:host-gateway \
  -v open-webui:/app/backend/data \
  --name open-webui \
  --restart always \
  ghcr.io/open-webui/open-webui:main

echo "✅ Tudo pronto! Acesse: http://localhost:3000"