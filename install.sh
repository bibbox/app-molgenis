#!/usr/bin/env bash
mkdir -p data/var/lib/postgresql/data
mkdir -p data/usr/share/elasticsearch/data
mkdir -p data/home/molgenis
mkdir -p data/minio/data

cp backend.conf data/backend.conf

chmod -R 777 data

docker network create bibbox-default-network

docker-compose up
