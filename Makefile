# Makefile

app-init:
	app-build
	app-start

app-start:
	docker run -it -p 3000:3000  project_sandbox

app-build:
	docker build -t project_sandbox .
