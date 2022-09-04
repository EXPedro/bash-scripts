# !/bin/bash

echo "Atualizando o servidor..."

yum upgrade -y
yum install httpd -y
yum install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/EXPedro/bash-scripts/archive/refs/heads/main.zip
unzip main.zip
cd bash-scripts-main
cp -R * /var/www/html/
