run: docker run -d -p 80:4444 --env-file ./config/.env --name container1 --rm logsapp:env
stop:
	docker stop logsapp
