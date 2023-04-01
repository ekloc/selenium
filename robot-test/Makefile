
run: 
	/usr/local/bin/docker-compose up --abort-on-container-exit 
	/usr/local/bin/docker-compose down

build all: build chrome

build:
	/usr/local/bin/docker-compose build --pull --no-cache app

chrome:
	/usr/local/bin/docker-compose pull chrome
