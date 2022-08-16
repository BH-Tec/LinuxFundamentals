#!/bin/bash

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos..."
cd /tmp
wget https://github.com/BrunoDorea/LinuxExperience/archive/refs/heads/main.zip
unzip main.zip
cd LinuxExperience-main
cp -R * /var/www/html/