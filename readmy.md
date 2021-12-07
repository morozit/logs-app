<!-- comands -->
<!-- --------------------------------------------------- -->

# command builds Docker images from a Dockerfile and a "context"

docker build .

# command builds Docker images and gives a name

docker build -t {name images}:{TAG} .

<!-- --------------------------------------------------- -->

# list CONTAINER

docker ps -a

# help

docker ps --help

<!-- ---------------------------------------------------- -->

# list images (IMAGE ID)

docker images

# змінити images на локальну {teg} {itmorozr/}

docker tag logsapp itmorozr/logsapp

# delete images

docker rmi {IMAGE ID}

# delete all images Видаляє всі які не використовуються

docker images prune

<!-- ---------------------------------------------------------- -->

# docker run localhost

# --rm після зупинки контейнер автоматично видаляється

docker run -d -p 3000:3000 --name {NAME_CONTAINER} --rm {IMAGE ID}:{TAG}

# docker run

docker run -d -p 80:4444 --env-file ./config/.env --name container1 --rm logsapp:env

<!-- --------------------------------------------------- -->

# docker stop

docker stop {CONTAINER ID}
docker stop {NAME_CONTAINER}

<!-- ---------------------------------------------------------- -->

# delete all container

docker container prune

<!-- ---------------------------------------------------------- -->

# push repository

docker push itmorozr/logsapp:latest
docker push itmorozr/logsapp:{tagname}

<!-- ---------------------------------------------------------- -->

# pull repository

docker pull itmorozr/logsapp
