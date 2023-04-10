#!/bin/bash

#Download repo using git client
yum -y install git
mkdir -p /vagrant
cd /vagrant
git clone https://github.com/arthe1612/mysql8-ol74.git
mv /vagrant/mysql8-ol74/* /vagrant
rm -Rf /vagrant/mysql8-ol74