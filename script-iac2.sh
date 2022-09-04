# !/bin/bash

echo "Atualizando o servidor..."

yum upgrade -y
yum install httpd -y
yum install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/EXPedro/anime-frontend/archive/refs/heads/master.zip
unzip master.zip
cd anime-frontend-master
cp -R * /var/www/html/
