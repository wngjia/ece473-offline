#!/bin/bash

docker pull golang:1.21
docker pull postgres:11
docker pull cassandra:4.1.3
docker pull ubuntu:22.04
docker pull ghcr.io/chaos-mesh/chaos-coredns:v0.2.6
docker pull ghcr.io/chaos-mesh/chaos-mesh:v2.6.2
docker pull ghcr.io/chaos-mesh/chaos-daemon:v2.6.2
docker pull ghcr.io/chaos-mesh/chaos-dashboard:v2.6.2
docker pull confluentinc/cp-zookeeper:7.3.5
docker pull confluentinc/cp-kafka:7.3.5
docker pull kindest/node:v1.30.0
docker pull gcr.io/google-containers/pause:latest
git clone https://github.com/wngjia/ece573-prj01.git
git clone https://github.com/wngjia/ece573-prj02.git
git clone https://github.com/wngjia/ece573-prj03.git
git clone https://github.com/wngjia/ece573-prj04.git
git clone https://github.com/wngjia/ece573-prj05.git
git clone https://github.com/wngjia/ece573-prj06.git
cp chaos-mesh-2.6.2 ece573-prj06 -R
cp prj06-reset_cluster.sh ece573-prj06/reset_cluster.sh
rm ece573-prj02/go.work
rm ece573-prj03/go.work
rm ece573-prj04/go.work
rm ece573-prj05/go.work
rm ece573-prj06/go.work
go -C ece573-prj02/kvs mod vendor
go -C ece573-prj03/reader/ mod vendor
go -C ece573-prj03/writer/ mod vendor
go -C ece573-prj04/writer mod vendor
go -C ece573-prj05/clients mod vendor
go -C ece573-prj06/clients mod vendor
mv ece573-prj* ..

