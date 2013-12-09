#!/bin/sh

  apt-get -qq update
  apt-get -y -qq install python-software-properties
  add-apt-repository -y ppa:chris-lea/node.js
  apt-get -qq update