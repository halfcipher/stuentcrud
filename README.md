Installation guide

- Clone the repo
 
 $ git clone https://github.com/halfcipher/stuentcrud.git


- Create the Virtaul Environment

$ python3 -m venv venv
$ source venv/bin/activate #change to new env

- Install dependancies through make and run app
 
$ make install-dep
& make run

- Dockerise image

 $ make docker-build
 $ docker-run
 $ docker_push

- Start the vagrant


$ make vagrant-init
$ make vagrant-up

- Run the compose (withput vagrant and with vagrant it will work)
  
$ make start-postgres
$ make start-flask-app
$ make start-flask-app2
$ make start-nginx

- Shutdown vagrant
$ make vagrant_destroy
