
build:
	docker build -t logsapp:new .

run: 
	docker run -d -p 4444:4444 --rm --name NAME_CONTAINER_1 logsapp:new

stop:
	docker stop NAME_CONTAINER_1
run-dev: 
	docker run -p 4444:4444 \
	-d \
	--rm \
	-v "D:\GitHub-test\logs-app\:/app" \
	-v /app/node_modules \
	-v save_logs:/app/data \
	--name temp_cont itmorozr/logsapp:dep
push:
	docker push itmorozr/logsapp:dep

