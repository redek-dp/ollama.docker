# ollama.docker

docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama


## Agora você pode rodar um modelo:

docker exec -it ollama ollama run llama3.2


### https://docs.openwebui.com/

docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main


### Execute com:

chmod +x setup.sh && ./setup.sh

## mais comandos:

### listar:
docker exec -it ollama ollama ls

### deletar:
docker exec -it ollama ollama rm <nome_do_modelo>

### modelo:

docker exec -it ollama ollama run gemma:2b
docker exec -it ollama ollama run mistral:latest
docker exec -it ollama ollama run glm-ocr
docker exec -it ollama ollama run qwen3-vl:2b
docker exec -it ollama ollama run granite3.3:2b
docker exec -it ollama ollama run nemotron-mini:4b
docker exec -it ollama ollama run samuser3/NVIDIA-Nemotron-3-Nano-4B:latest

