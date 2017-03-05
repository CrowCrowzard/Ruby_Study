#!/bin/bash

ruby_version='2.4.0'

yum -y install git
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
exec $SHELL -l

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

yum install -y gcc
yum install -y openssl-devel readline-devel zlib-devel

rbenv install -v $ruby_version
rbenv rehash
rbenv global $ruby_version

