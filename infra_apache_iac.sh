#!/bin/bash

echo 'Iniciando o a atualizacao...'

apt-get update
apt-get upgrade -y

echo 'Instalando o apache e unzip...'

apt-get install apache2 -y
apt-get install unzip -y

echo 'Instalacao concluida...'

echo 'Manipulando os aquivos...'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

echo 'Processo concluido!!!'

