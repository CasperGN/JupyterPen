#!/bin/bash

#Jupyter Install

{

#Install Basics
echo Installing Basics!
brew install zip &>/dev/null
echo Installing certbot!
brew install certbot &>/dev/null
echo Installing pip3!
brew install python3 &>/dev/null
echo Installing awscli!
pip3 install awscli -q
echo Installing wget!
brew install wget &>/dev/null

#Install Python PIP
echo Installing Python PIP!
wget -q https://bootstrap.pypa.io/get-pip.py -O get-pip.py &>/dev/null
python get-pip.py &>/dev/null
rm get-pip.py &>/dev/null

#Install Juypter
echo Installing Jupyter!
pip3 install jupyter -q &>/dev/null
pip3 install --upgrade --force jupyter-console -q &>/dev/null
pip3 install pandas -q &>/dev/null
pip3 install openpyxl -q &>/dev/null
mkdir ~/.jupyter &>/dev/null
mkdir ~/.jupyter/ssl &>/dev/null
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=COUNTRY/ST=STATE/L=CITY/O=ORGANIZATION/CN=CNAME" -keyout ~/.jupyter/ssl/mykey.key -out ~/.jupyter/ssl/mycert.pem &>/dev/null
screen -dmS notebook jupyter-notebook --notebook-dir ~/.jupyter

echo Move notebook!
cp ./Jupyter_OSINT.ipynb ~/.jupyter
}
