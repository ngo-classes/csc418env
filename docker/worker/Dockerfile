FROM mongo:8.0.3-nanoserver-ltsc2022

COPY mongodb.conf /etc/mongod.conf

# 27017: mongodb port
EXPOSE 27017

ENTRYPOINT ["mongod", "--config","/etc/mongod.conf"]
