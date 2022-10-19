# Malawi - Digital Health-Division - Messaging Bus

 Docker Compose Config for Rabbit MQ

## Prerequisites

- Docker: >=20.10.17
- Docker Compose: >=1.29.2

## Installation

Pulling and running the containers with docker compose

``` bash
    docker-compose up -d
```

## Creating vhost and queues

sh into the container with the following command

``` bash
    docker exec -it messaging-queue sh
```

navigate to the following directory

``` bash
    cd /script
```

Create a new vhost

Once the vhost is created you will be asked to either create a new user to attach to the vhost or to attach an existing user the the vhost.

After creating a vhost we will need to create a queue.
