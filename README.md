# MOLGENIS BIBBOX application

This container can be installed as [BIBBOX APP](https://bibbox.readthedocs.io/en/latest/ "BIBBOX") or standalone.
 
After the installation follow these [instructions](INSTALL-APP.md)

## Hints
* approx. time with medium fast internet connection: **15 minutes**
* initial user/password: **admin / \<set during instalations\>**

## Install within BIBBOX

Within BIBBOX you can use the [BIBBOX](https://bibbox.readthedocs.io/en/latest/ "BIBBOX") to install a lot of software tools. After the installation is finished you can start your application in the dashboard.

### Install Environment Variables

 * ADMIN_PASSWORD = admin user password
 
The default values for the standalone installation are:

 * ADMIN_PASSWORD = admin

## Docker Images Used
 * [molgenis/molgenis-frontend:8.7.2](https://hub.docker.com/r/molgenis/molgenis-frontend/), offical molgenis-frontend container 
 * [molgenis/molgenis-app:8.7.2](https://hub.docker.com/r/molgenis/molgenis-app), offical molgenis-app container
 * [postgres:11-alpine](https://hub.docker.com/_/postgres), offical postgres container
 * [molgenis/molgenis-elasticsearch:1.0.0](https://hub.docker.com/r/molgenis/molgenis-elasticsearch/), offical molgenis/molgenis-elasticsearch container
 * [molgenis/opencpu:opencpu-release-2019-03-20_12-07-11](https://hub.docker.com/r/molgenis/opencpu/), offical molgenis/opencpu container
 * [minio/minio:RELEASE.2019-03-20T22-38-47Z](https://hub.docker.com/r/minio/minio/), offical minio/minio container
 
## Standalone Installation

To install the app locally execute the commands:
* Clone the git repository: 
  * `git clone https://github.com/bibbox/app-molgenis.git`
* Change the current directory to app-molgenis: 
  * `cd app-molgenis/` 
* Create the directories `data/home/molgenis`, `data/var/lib/postgresql/data`, `data/usr/share/elasticsearch/data` and `data/minio/data`:
  * `mkdir -p data/home/molgenis` 
  * `mkdir -p data/usr/share/elasticsearch/data`
  * `mkdir -p data/var/lib/postgresql/data`
  * `mkdir -p data/minio/data` 
* Copy the file `backend.conf` to `./data/backend.conf`: 
  * `cp backend.conf data/backend.conf`
* Change the permission of the directory `./data`: 
  * `chmod -R 777 data`
* Create the docker network `bibbox-default-network`: 
  * `docker network create bibbox-default-network`
* Run **docker-compose up** in the root folder of the project: 
  * `docker-compose up -d`
* **Alternatively** on a *Linux* system run the bash script `intsall.sh` after cloning and change the working directory to the git repository directory.
 

After the installation (might take a few minutes) open **http://localhost** in your browser to access Molgenis.
The default admin login is **user:admin/pw:admin**, this can be changed in `docker-compose.yml`.

## Mounted Volumes
* ./data/backend.conf
* ./data/home/molgenis
* ./data/var/lib/postgresql/data
* ./data/usr/share/elasticsearch/data
* ./data/minio/data
