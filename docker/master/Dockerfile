FROM huy55465/418base

USER root

COPY code-server/config.yaml /
COPY start-master.sh /
COPY configs /configs
COPY node-server /node-server
COPY install.sh /

# RUN apt update && \
#     apt install -y curl nginx && \
#     curl -fsSL https://code-server.dev/install.sh | sh && \
#     mkdir -p /root/.config/code-server/ && \
#     cp /config.yaml /root/.config/code-server/config.yaml && \
#     rm /config.yaml && \
#     apt clean
RUN /install.sh && rm /install.sh

# 8088: vscode-server
EXPOSE 8088

CMD ["/bin/bash", "/start-master.sh"]
