run: docker run -d -p 4444:4444 -v logs:/app/data --name container --rm logsapp:volumes
stop:
	docker stop logsapp
