#!/bin/bash

docker pull golang:1.21
docker pull postgres:11
docker pull cassandra:4.1.3
docker pull ubuntu:22.04
docker pull ghcr.io/chaos-mesh/chaos-mesh:v2.6.2
docker pull ghcr.io/chaos-mesh/chaos-daemon:v2.6.2
docker pull ghcr.io/chaos-mesh/chaos-dashboard:v2.6.2
docker pull confluentinc/cp-zookeeper:7.3.5
docker pull confluentinc/cp-kafka:7.3.5
docker pull kindest/node:v1.30.0
git clone https://github.com/wngjia/ece573-prj01.git
git clone https://github.com/wngjia/ece573-prj02.git
git clone https://github.com/wngjia/ece573-prj03.git
git clone https://github.com/wngjia/ece573-prj04.git
git clone https://github.com/wngjia/ece573-prj05.git
git clone https://github.com/wngjia/ece573-prj06.git
cp prj06-chaos-mesh_install.sh ece573-prj06/chaos-mesh_install.sh
cp prj06-reset_cluster.sh ece573-prj06/reset_cluster.sh
go -C ece573-prj02/kvs mod vendor
go -C ece573-prj03/reader/ mod vendor
go -C ece573-prj03/writer/ mod vendor
go -C ece573-prj04/writer mod vendor
go -C ece573-prj05/clients mod vendor
go -C ece573-prj06/clients mod vendor
mv ece573-prj* ..

