FROM mongo:8.0.3-noble

COPY mongod.conf /etc/mongod.conf

# 27017: mongodb port
EXPOSE 27017

CMD ["/bin/bash", "/start-worker.sh"]
