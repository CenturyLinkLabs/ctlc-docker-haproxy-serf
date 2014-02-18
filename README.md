ctlc-docker-haproxy
==================

Base docker image to run a HAProxy with Serf


Usage
-----

To create the image `ctlc/haproxy`, execute the following command on the ctlc-docker-haproxy folder:

	sudo docker build -t ctlc/haproxy .

Running the Serf agent
------------------------

Run the `/run.sh` script to start WordPress (via Docker supervisor):

	ID=$(sudo docker run -d -p 80 ctlc/haproxy /run.sh)

It will store the new container ID (like `d35bf1374e88`) in $ID. Get the allocated external port:

	sudo docker port $ID 80

It will print the allocated port (like 4751). Test your deployment:

	curl http://0.0.0.0:4751/

Done!
