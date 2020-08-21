#!/bin/bash

#Configurar el repositorio, instalar paquetespara usar el repositorio por https
sudo apt-get update
sudo apt-get install \
apt-transport-https -y \
ca-certificates -y \
curl -y \
gnupg-agent -y \
software-properties-common -y

#Agregar llave Docker GPG 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

#Agregamos repositorio mas estable
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Instalar Docker Engine
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
