FROM huy55465/418base

ENV MONGO_VER="8.0.4"
COPY install.sh /
COPY start-worker.sh /
RUN /install.sh
# this must be run after mongodb is installled.
COPY mongod.conf /etc/mongod.conf

# 27017: mongodb port
EXPOSE 27017

CMD ["/bin/bash", "/start-worker.sh"]
