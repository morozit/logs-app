<!-- comands -->
<!-- --------------------------------------------------- -->

# command builds Docker images from a Dockerfile and a "context"

docker build .

# command builds Docker images and gives a name

# -t >>>> цим параметром задається імя образу

docker build -t {name images}:{TAG} .

<!-- --------------------------------------------------- -->

# list CONTAINER

docker ps -a

# help

docker ps --help

<!-- ---------------------------------------------------- -->

# list images (IMAGE ID)

docker images

# delete images

docker rmi {IMAGE ID}

# delete all images Видаляє всі які не використовуються

docker images prune

<!-- ---------------------------------------------------------- -->

# docker run => Запускай контейнер на основі вказаного образу

# -d >>>> без погрузки в консоль (можна дальше писати команди)

# -p 3000:4444 >>>> порт {3000} локальний порт на локальній машині {4444} порт в докер контейнері (Dockerfile)

# --name {NAME_CONTAINER} >>>> вказуємо назву контейнера

# --rm >>>> після зупинки контейнер автоматично видаляється

# {IMAGE ID}:{TAG} >>>>

docker run -d -p 3000:4444 --name {NAME_CONTAINER} --rm {IMAGE ID}:{TAG}

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

# VOLUME

docker run -d -p 4444:4444 --rm -v save_logs:/app/data --name TEST_VOLUMES_CONTAINER itmorozr/logsapp:volume_01

# ****\*\***** \*розробка в реальному часі\*

docker run -d -p 4444:4444 --rm -v "D:\GitHub-test\logs-app\:/app" -v /app/node_modules -v save_logs:/app/data --name TEST_VOLUMES_CONTAINER itmorozr/logsapp:volume_01

<!-- ---------------------------------------------------------- -->

# стоврити новий образ на основі іншого з новим імям

docker tag {IMAGE}:{tagname} itmorozr/{IMAGE}:{tagname}

# push repository

docker push {login}/{IMAGE}:{tagname}
docker push itmorozr/logsapp:dep

<!-- ---------------------------------------------------------- -->

# pull repository

docker pull itmorozr/logsapp
