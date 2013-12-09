#!/bin/sh

echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse\n\
deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse\n\
deb mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse\n\
deb mirror://mirrors.ubuntu.com/mirrors.txt precise-security main restricted universe multiverse\n" > /etc/apt/sources.list

apt-get -qq update
apt-get -y -qq install python-software-properties
add-apt-repository -y ppa:chris-lea/node.js
apt-get -qq update
