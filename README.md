# DockerUI
Docker UI


## Prerequisites
- nodejs v0.10.33
- npm v1.4.28


## Start

### to enable docker api
```sh
$ sudo docker -H tcp://127.0.0.1:5000 -H unix:///var/run/docker.sock -d
```

### build docker environment

```sh
$ sudo docker pull bluemeric/

#### interactive
$ sudo docker run --name idock  -it -p "9000:9000" bluemeric/dockyard

#### background
$ sudo docker run --name idock  -d -p "9000:9000" bluemeric/dockyard

```

### local setup (needs ip change)

```sh
$ sudo apt-get update
$ sudo apt-get -q -y install nodejs npm ruby ruby-dev rubygems-integration
$ npm install -g grunt-cli
$ npm install -g bower
$ npm install -g grunt-contrib-compass 
$ sudo gem install sass
$ sudo gem install compass
$ cd $SOURCE
$ npm install --save
$ npm install grunt-contrib-compass --save
$ bower install --save --allow-root --force-latest --config.interactive=false
$ ./grunt serve --force
```
## Features Supported

* Summary of enviroment
* Listing Containers
* Listing Images
* State of Containers (Started or Stopped)
