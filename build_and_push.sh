#!/bin/bash
cd nginx-hello
docker build -t martivo/nginxdemos:latest -f Dockerfile .
docker push martivo/nginxdemos:latest
docker build -t martivo/nginxdemos:plain-text -f DockerfilePlainText .
docker push martivo/nginxdemos:plain-text
cd ../nginx-hello-nonroot/html-version
docker build -t martivo/nginxdemos:non-root -f Dockerfile .
docker push martivo/nginxdemos:non-root

cd ../plain-text-version 
docker build -t martivo/nginxdemos:non-root-plain-text -f Dockerfile .
docker push martivo/nginxdemos:non-root-plain-text

docker build -t martivo/nginxdemos:debugging -f Dockerfile.notools .
docker push martivo/nginxdemos:debugging
