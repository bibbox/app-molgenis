# molgenis BIBBOX application

This container can be installed as [BIBBOX APP](https://bibbox.readthedocs.io/en/latest/ "BIBBOX App Store") or standalone. 

After the docker installation follow these [instructions](INSTALL-APP.md).

## Standalone Installation 

Clone the github repository. If necessary change the ports in the environment file `.env` and the volume mounts in `docker-compose.yml`.

```
git clone https://github.com/bibbox/app-molgenis
cd app-molgenis
docker network create bibbox-default-network
docker-compose up -d
```

The main App can be opened and set up at:
```
http://localhost:80
```

## Install within BIBBOX

Visit the BIBBOX page and find the App by its name in the store. Click on the symbol and select install. Then fill the parameters below and name your App, click install again.

## Docker Images used
  - [molgenis/molgenis-app](https://hub.docker.com/r/molgenis/molgenis-app) 
  - [docker.elastic.co/elasticsearch/elasticsearch](https://hub.docker.com/r/docker.elastic.co/elasticsearch/elasticsearch) 
  - [molgenis/molgenis-frontend](https://hub.docker.com/r/molgenis/molgenis-frontend) 
  - [docker.elastic.co/kibana/kibana](https://hub.docker.com/r/docker.elastic.co/kibana/kibana) 
  - [docker.elastic.co/kibana/kibana](https://hub.docker.com/r/docker.elastic.co/kibana/kibana) 
  - [minio/minio](https://hub.docker.com/r/minio/minio) 
  - [molgenis/opencpu](https://hub.docker.com/r/molgenis/opencpu) 
  - [postgres](https://hub.docker.com/r/postgres) 


 
## Install Environment Variables
  - ADMIN_PASSWORD = Admin Password, please change for production
  - DB_PASSWORD = Database password, please change for production

  
The default values for the standalone installation are:
  - ADMIN_PASSWORD = admin
  - DB_PASSWORD = molgenis

  
## Mounted Volumes
### molgenis/molgenis-app Conatiner
  - *./data/home/molgenis:/home/molgenis*
### docker.elastic.co/elasticsearch/elasticsearch Conatiner
  - *./data/usr/share/elasticsearch/data:/usr/share/elasticsearch/data*
### molgenis/molgenis-frontend Conatiner
  - *./data/backend.conf:/etc/nginx/proxy.d/backend.conf*
### docker.elastic.co/kibana/kibana Conatiner
  - *./data:/root/dashboard:ro*
### minio/minio Conatiner
  - */data/minio/data:/data*
### postgres Conatiner
  - *./data/var/lib/postgresql/data:/var/lib/postgresql/data*

