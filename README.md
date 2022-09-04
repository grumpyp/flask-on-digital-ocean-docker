# Steps to setup a flask server in under 5 min on digitalocean

[![Deeploy flask on digitalocean in under 5 min](https://content-baer.de/wp-content/uploads/2022/09/Docker-Digitalocean-Flask-setup.jpg)](https://youtu.be/5rj3_c-Hyu4)

## Step 1

Create a digitalocean account -> **[use this link to get 100 dollar start-bonus](https://m.do.co/c/4f67b45f5183)**

Create a new droplet -> follow the steps in the video

For more deployment possibilities also [visit my blog](https://content-baer.de/python-flask-hosting-plattformen/)
## Step 2 

Login via SSH and follow the steps in the video
`ssh root@<yourip>`

## Three 

Get Docker on your Droplet

source: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)

```
sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo docker run hello-world
```

after all these commands you must have the following stdout terminal

```

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/


```

afterwards follow the steps in the video



## Four 

Build a docker file and run it

-> follow the steps in the video


# Used commands
to create your ssh-key:
please follow the steps on digitalocean when adding the ssh-key during the droplet setup

`ssh-keygen` 

`scp -r <directory> user@ip:<remote/directory>`

`docker build . -t flasktut:1`

`docker run -d -p 5000:5000 <containerid>`
