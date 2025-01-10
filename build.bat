echo on
docker image rm master:latest
docker image rm worker:latest 
docker build -t master:latest ./docker/master
docker build -t worker:latest ./docker/worker
