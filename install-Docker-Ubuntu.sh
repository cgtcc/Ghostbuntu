#!/bin/bash
sudo apt-get remove docker
curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker $USER
