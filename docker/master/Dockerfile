FROM node:22.11.0-slim

USER root

COPY code-server/config.yaml /
COPY start-master.sh /
COPY configs /configs
COPY node-server /node-server
COPY mkdocs/setup_mkdocs.sh /

RUN apt update && \
    apt install -y curl nginx && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    mkdir -p /root/.config/code-server/ && \
    cp /config.yaml /root/.config/code-server/config.yaml && \
    source /setup_mkdocs.sh && \
    rm /config.yaml && \
    rm /setup_mkdocs.sh  && \
    apt clean

RUN ln -s /configs/nginx/sites-available/data /etc/nginx/sites-enabled/data

# 8088: vscode-server
EXPOSE 8088
# 3000: Node.js server
EXPOSE 3000

CMD ["/bin/bash", "/start-master.sh"]
