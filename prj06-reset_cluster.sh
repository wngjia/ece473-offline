#!/bin/bash

kind delete cluster
kind create cluster --config cluster.yml
kind load docker-image ghcr.io/chaos-mesh/chaos-mesh:v2.6.2
kind load docker-image ghcr.io/chaos-mesh/chaos-daemon:v2.6.2
kind load docker-image ghcr.io/chaos-mesh/chaos-dashboard:v2.6.2
kind load docker-image confluentinc/cp-zookeeper:7.3.5
kind load docker-image confluentinc/cp-kafka:7.3.5
./chaos-mesh_install.sh
