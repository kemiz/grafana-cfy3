#!/bin/bash
ctx logger info "Installing Grafana"
sudo echo 'deb https://packagecloud.io/grafana/stable/debian/ wheezy main' | sudo tee /etc/apt/sources.list.d/grafanapackages.list
curl https://packagecloud.io/gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get install -y grafana

sudo update-rc.d grafana-server defaults 95 10

