FROM mongo:8.0.3-nanoserver-ltsc2022

COPY mongodb.conf /etc/mongod.conf

ENTRYPOINT ["mongod", "--config","/etc/mongod.conf"]
