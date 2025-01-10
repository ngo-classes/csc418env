FROM huy55465/418base

USER root

COPY code-server/ /code-server
COPY start-master.sh /
COPY configs /configs
COPY node-server /node-server
COPY mkdocs/setup_mkdocs.sh /
COPY install.sh /

RUN /install.sh && rm /install.sh
RUN bash setup_mkdocs.sh && \
    rm /setup_mkdocs.sh

# 8088: vscode-server# 
# 3000, 4200: Node.js server
# 8000: mkdocs serve
EXPOSE 8088 8000 3000 4200

CMD ["/bin/bash", "/start-master.sh"]
