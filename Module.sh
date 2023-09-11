#!/bin/sh

clear

Cy='\033[34;1m' #biru
i='\033[32;1m' #ijo
pur='\033[35;1m' #purple
e='\033[36;1m' #cyan
me='\033[31;1m' #merah
pu='\033[37;1m' #putih
ku='\033[33;1m' #kuning

echo "Check Package..."
sleep 5
bin=$PREFIX/bin
dir=$(pwd)
if [ -e $bin/git ]; then 
  echo -$i "Skip install git but already installed!"
else 
  echo -$me "Instaling git!"
  pkg install git -y
  echo -$i "Done install git!"
fi
if [ -e $bin/python ]; then 
  echo -$i "Skip install python but already installed!"
else 
  echo -$me "Instaling Python!"
  pkg install python -y
  echo -$i "Done install python!"
fi
if [ -e $bin/python2 ]; then 
  echo -$i "Skip install python2 but already installed!"
else 
  echo -$me "Instaling Python2!"
  pkg install python2 -y
  echo -$i "Done install python2!"
fi
if [ -e $bin/bash ]; then 
  echo -$i "Skip install bash but already installed!"
else 
  echo -$me "Instaling Bash!"
  pkg install bash -y
  echo -$i "Done install bash!"
fi
if [ -e $bin/python ]; then 
  echo -$i "Skip install python but already installed!"
else 
  echo -$me "Instaling Openssl!"
  pkg install openssl
  echo -$i "Done install Openssl!"
fi
echo $i "Installing pip"
pkg install python-pip

echo $e "pip install colorama bs4 requests pyfiglet tqdm"
echo $e "pip2 install colorama bs4 requests pyfiglet tqdm"
echo $ku "Done installing pip!"

clear

echo $me "Install Bahan"
pip2 install requests
pip2 install bs4
pip install colorama
pip2 install colorama
pip2 install rich
pip2 install datetime
pip2 install random
pip2 install string
echo $me "Module Sudah Terinstal Dengan Baik"

clear
echo $ku "Tunggu Sebentar..."

sleep 7

clear
python Spamer.py