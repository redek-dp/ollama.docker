# ollama.docker

docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama


## Agora você pode rodar um modelo:

docker exec -it ollama ollama run llama3.2


### https://docs.openwebui.com/

docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
