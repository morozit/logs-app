run: docker run -d -p 80:4444 -v logs/app/data --env-file ./config/.env --name container1 --rm logsapp:env
stop:
	docker stop logsapp
