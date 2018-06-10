#!/bin/bash

### ubuntu os update
sudo apt-get update

### ubuntu os/system software upgrade
sudo apt-get upgrade

### docker 17.09 install
curl https://releases.rancher.com/install-docker/17.09.sh | sh

### rancher add node
sudo docker run --rm --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher/agent:v1.2.10 http://192.168.1.135:8080/v1/scripts/796E2CAA9791464E742A:1514678400000:DxJTZpnDD9KYpjEZN1K3CBGqM1A


