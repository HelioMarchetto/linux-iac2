#!/bin/bash

echo "Iniciando o script!"
echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo "Baixando os pacotes necessários..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Obtendo e copiando os arquivos da aplicação" 
cd /tmp 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip unzip main.zip 
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Finalizando o script..."


