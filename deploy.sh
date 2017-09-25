#!/bin/bash
sudo apt update -y

#ставим nodejs
sudo apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
# ставим redis
sudo apt-get install -y redis-server
# ставим nginx
sudo apt-get install -y nginx
# ставим go
sudo apt-get install -y golang

#ставим go-musicoin
sudo apt install -y docker.io
sudo apt install -y golang
git clone https://github.com/Musicoin/go-musicoin.git
cd go-musicoin
make gmc-cross
cd ..

#ставим open-ethereum-pool
git clone https://github.com/boehla/open-ethereum-pool.git
cd open-ethereum-pool
make

cd www

#ставим необязательные секции
sudo npm install -y -g phantomjs-prebuilt


npm install -g ember-cli
npm install -g bower
npm install
bower install
./build.sh

#ставим midnight commander для удобства
sudo apt install -y mc

sudo apt upgrade
sudo apt autoremove -y --purge

#добавим пользователей
sudo useradd gmc
sudo useradd pool
