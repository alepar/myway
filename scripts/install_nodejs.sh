#!/bin/sh

apt-get -y -qq install python-software-properties
add-apt-repository -y ppa:chris-lea/node.js
apt-get -qq update
apt-get install nodejs