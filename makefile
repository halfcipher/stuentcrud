create-env:
	# python3 -m venv venv
	source venv/bin/activate

install-dep:
	pip install -r requirements.txt

run-app:
	python3

docker-build:
	sudo docker build -t demotemp:1.1

docker-run:
	sudo docker run -d --name flask_app -p 4000:4000 demotemp:1.1

docker_push: 
	docker tag demotemp:1.1 shubs3497/studentcrud:1.1
	docker push shubs3497/studentcrud:1.1	

vagrant-init:
	vagrant init

vagrant-up:
	vagrant up

start-postgres:
	docker compose up -d flask_db

start-flask-app:
	docker compose up flask_app

start-flask-app2:
	docker compose up flask_app2

start-nginx:
	docker compose up nginx		

vagrant_destroy:
	vagrant destroy
