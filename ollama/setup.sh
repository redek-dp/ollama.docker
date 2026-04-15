#!/bin/bash
set -e

echo "🚀 Iniciando Ollama..."
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

echo "⏳ Aguardando Ollama iniciar..."
sleep 10

echo "📦 Baixando modelo llama3.2..."
docker exec -it ollama ollama run llama3.2