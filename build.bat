echo on
docker system prune -a --volumes
docker build -t master:latest ./docker/master
docker build -t worker:latest ./docker/worker
