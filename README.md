# MOLGENIS BIBBOX application

## Hints
* approx. time with medium fast internet connection: **15 minutes**
* initial user/password: **admin / '<'set during instalations'>'**

## Docker Images Used
 * [molgenis/molgenis-frontend:8.7.2](https://hub.docker.com/r/molgenis/molgenis-frontend/), offical molgenis-frontend container 
 * [molgenis/molgenis-app:8.7.2](https://hub.docker.com/r/molgenis/molgenis-app), offical molgenis-app container
 * [postgres:11-alpine](https://hub.docker.com/_/postgres), offical postgres container
 * [molgenis/molgenis-elasticsearch:1.0.0](https://hub.docker.com/r/molgenis/molgenis-elasticsearch/), offical molgenis/molgenis-elasticsearch container
 * [molgenis/opencpu:opencpu-release-2019-03-20_12-07-11](https://hub.docker.com/r/molgenis/opencpu/), offical molgenis/opencpu container
 * [minio/minio:RELEASE.2019-03-20T22-38-47Z](https://hub.docker.com/r/minio/minio/), offical minio/minio container
 
## Install Environment Variables
 * ADMIN_PASSWORD = admin user password
 
## Mounted Volumes


## Installation Instructions 

* start your application in the dashboard

## Local Installation

* Copy the file `backend.conf` to `./data/backend.conf`
* Create the directories `data/home/molgenis`, `data/var/lib/postgresql/data`, `data/usr/share/elasticsearch/data` and `data/minio/data`. 
* Change the permission of the directory `./data`.
* Run **docker-compose up** in the root folder of the project. After a few minutes OpenSpecimen is reachable via **http://localhost**.  
* Default admin login: user:admin/pw:admin. 
* This can be changed in `docker-compose.yml`.
* **Alternatively** on a *Linux* system run the bash script `intsall.sh`.
