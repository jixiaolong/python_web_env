#!/usr/bin/env bash

apt-get install python-pip 
pip install -U pip 
echo "pip='pip2.7'" >> ~/.bash_rc
source ~/.bash_rc
pip install virtualenv

pip install virtualenvwrapper
export WORKON_HOME=~/.pyenvs 
source /usr/local/bin/virtualenvwrapper.sh

mkvirtualenv web-app
workon web-app

pip install -r requirement.txt
echo "now env init ok! active env by:"
echo "$ workon web-app"
