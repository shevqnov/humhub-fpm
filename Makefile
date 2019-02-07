BASENAME=$(shell bin/_basename.sh)
DEPLOY_BRANCH="master"

default: bash

build:
	dokcer-compose build

start:
	docker-compose up -d

stop:
	docker-compose down

bash: 
	docker exec -it humhub /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"