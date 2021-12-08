build:
	docker build -t logsapp:new .
run: 
	docker run -d -p 4444:4444 --rm --name NAME_CONTAINER_1 logsapp:ver_02

run-dev: 
	docker run -d -p 4444:4444 --rm -v "D:\GitHub-test\logs-app\:/app" -v /app/node_modules  -v save_logs:/app/data --name TEST_VOLUMES_CONTAINER itmorozr/logsapp:volume_01
stop:
	docker stop NAME_CONTAINER


