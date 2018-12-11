![PyPI - Status](https://img.shields.io/pypi/status/Django.svg) [![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/) ![Read the Docs](https://img.shields.io/readthedocs/pip.svg) 
![Plugin on redmine.org](https://img.shields.io/redmine/plugin/rating/redmine_xlsx_format_issue_exporter.svg)


## Disclaimer
Laravel Up and running in docker containers
stack =>  php 7, Redis, Mongodb , mysql and Nginx 
- Easy To use 
- Built for Humans 


## Instruction 
```bash
# you should run this one only for the first time [install deps]
make install

```    

## Update Your `.env` file 

## mysql - Redis 
```yaml
# mysql config 
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=dockerized_lara
DB_USERNAME=lara_user
DB_PASSWORD=root

#redis Config 
REDIS_HOST=redis
REDIS_PASSWORD=null
REDIS_PORT=6379
```
## mongo db
```yaml
#mongodb config 
DB_CONNECTION=mongodb
DB_HOST=mongo
DB_PORT=27017
DB_DATABASE=dockerized_lara
```
     
## Important notes
```bash
make php # access php image 
make up # to start you docker
make down # to stop all containers 
make clear  # delete log file content + clear redis cache
```   
  
## Update your `hosts` file 

Add an entry `127.0.0.1 dockerized_lara.local` to your `/etc/hosts` file:
```bash
echo "127.0.0.1 dockerized_lara.local" >> /etc/hosts
echo "127.0.0.1 mysql" >> /etc/hosts
```

Open your browser and visit `dockerized_lara.local:8001` and Enjoy 


## makeFile
```bash 
Available tasks:
    install 		Init your project
    up 			Docker compose up
    down 		Docker compose down
    clean 		Remove unused containers & images
    clear 		Clear logs and flush redis
    exec 		Execute command inside docker php
    php 		Access php image
```

## Project structure
```
.
├── Makefile
├── app
├── docker
│   ├── files
│   │   ├── dockeried_lara.ini
│   │   └── nginx.conf
│   ├── mongo
│   │   └── Dockerfile
│   ├── nginx
│   │   └── Dockerfile
│   ├── php
│   │   └── Dockerfile
│   └── redis
│       └── Dockerfile
├── docker-compose.yml
└── readme.md

```
## Screenshots

### Images
![ScreenShot](https://i.imgur.com/ymidQKE.png)

#### containers
![ScreenShot](https://i.imgur.com/JEGssTL.png)

### APP
![ScreenShot](https://i.imgur.com/VV4re4c.png)
![ScreenShot](https://i.imgur.com/nMKmK0R.png)
![ScreenShot](https://i.imgur.com/ckXKKPs.png)




