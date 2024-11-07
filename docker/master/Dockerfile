FROM node:22.11.0-slim

USER root

COPY start-master.sh /

RUN apt update && \
    apt install -y curl && \
    curl -fsSL https://code-server.dev/install.sh | sh

# 8088: vscode-server
EXPOSE 8088

CMD ["/bin/bash", "/start-master.sh"]
